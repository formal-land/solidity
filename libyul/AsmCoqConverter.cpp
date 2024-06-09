/*
	This file is part of solidity.

	solidity is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	solidity is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with solidity.  If not, see <http://www.gnu.org/licenses/>.
*/
// SPDX-License-Identifier: GPL-3.0
/**
 * @date 2019
 * Converts inline assembly AST to JSON format
 */

#include <libyul/AsmCoqConverter.h>
#include <libyul/AST.h>
#include <libyul/Exceptions.h>
#include <libsolutil/CommonData.h>
#include <libsolutil/UTF8.h>

namespace solidity::yul
{

std::string AsmCoqConverter::operator()(Block const& _node)
{
	std::string ret;

	for (auto const& statement: _node.statements)
	{
		ret += "let _ :=\n";
		m_indent++;
		ret += indent() + std::visit(*this, statement) + " in\n";
		m_indent--;
		ret += indent();
	}

	ret += "tt";

	return ret;
}

std::string AsmCoqConverter::operator()(TypedName const& _node)
{
	yulAssert(!_node.name.empty(), "Invalid variable name.");
	std::string ret = "M.get (| \"" + _node.name.str() + "\" |)";

	return ret;
}

std::string AsmCoqConverter::operator()(Literal const& _node)
{
	yulAssert(util::validateUTF8(_node.value.str()), "Expected valid UTF-8 value as literal");
	std::string value = _node.value.str();

	switch (_node.kind)
	{
	case LiteralKind::Number:
		yulAssert(
			util::isValidDecimal(_node.value.str()) || util::isValidHex(_node.value.str()),
			"Invalid number literal"
		);
		return "Literal.number " + value;
	case LiteralKind::Boolean:
		return "Literal.bool " + value;
	case LiteralKind::String:
		return "Literal.string \"" + util::toHex(util::asBytes(_node.value.str())) + "\"";
	default:
		yulAssert(false, "Invalid literal kind");
		return "";
	}
}

std::string AsmCoqConverter::operator()(Identifier const& _node)
{
	yulAssert(!_node.name.empty(), "Invalid identifier");
	std::string ret = "M.get (| \"" + _node.name.str() + "\" |)";

	return ret;
}

std::string AsmCoqConverter::operator()(Assignment const& _node)
{
	yulAssert(_node.variableNames.size() >= 1, "Invalid assignment syntax");
	std::string ret = "M.declare (|\n";
	m_indent++;
	ret += indent() + "[";
	bool isFirst = true;
	for (auto const& var: _node.variableNames)
	{
		if (!isFirst)
			ret += "; ";
		isFirst = false;
		ret += "\"" + var.name.str() + "\"";
	}
	ret += "],\n";
	ret += indent() + (_node.value ? std::visit(*this, *_node.value) : "Literal.undefined");
	m_indent--;
	ret += "\n" + indent() + "|)";

	return ret;
}

std::string AsmCoqConverter::operator()(FunctionCall const& _node)
{
	std::string ret = "M.call (|\n";
	m_indent++;
	ret += indent() + "\"" + _node.functionName.name.str() + "\",\n";
	ret += indent() + "[\n";
	m_indent++;
	bool isFirst = true;
	for (auto const& argument: _node.arguments)
	{
		if (!isFirst)
			ret += ";\n";
		isFirst = false;
		ret += indent() + std::visit(*this, argument);
	}
	ret += "\n";
	m_indent--;
	ret += indent() + "]\n";
	m_indent--;
	ret += indent() + "|)";

	return ret;
}

std::string AsmCoqConverter::operator()(ExpressionStatement const& _node)
{
	std::string ret = std::visit(*this, _node.expression);

	return ret;
}

std::string AsmCoqConverter::operator()(VariableDeclaration const& _node)
{
	std::string ret = "M.assign (|\n";
	m_indent++;
	ret += indent() + "[";
	bool isFirst = true;
	for (auto const& var: _node.variables)
	{
		if (!isFirst)
			ret += "; ";
		isFirst = false;
		ret += "\"" + var.name.str() + "\"";
	}
	ret += "],\n";
	ret += indent() + (_node.value ? std::visit(*this, *_node.value) : "Literal.undefined");
	m_indent--;
	ret += "\n" + indent() + "|)";

	return ret;
}

std::string AsmCoqConverter::operator()(FunctionDefinition const& _node)
{
	yulAssert(!_node.name.empty(), "Invalid function name.");
	std::string ret = "M.function (|\n";
	m_indent++;
	ret += indent() + "\"" + _node.name.str() + "\",\n";
	ret += indent() + "[\n";
	m_indent++;
	bool isFirst = true;
	for (auto const& var: _node.parameters)
	{
		if (!isFirst)
			ret += ";\n";
		isFirst = false;
		ret += indent() + "\"" + var.name.str() + "\"";
	}
	ret += "\n";
	m_indent--;
	ret += indent() + "],\n";
	ret += indent() + "[\n";
	m_indent++;
	isFirst = true;
	for (auto const& var: _node.returnVariables)
	{
		if (!isFirst)
			ret += ";\n";
		isFirst = false;
		ret += indent() + "\"" + var.name.str() + "\"";
	}
	ret += "\n";
	m_indent--;
	ret += indent() + "],\n";
	ret += indent() + "ltac:(M.monadic (\n";
	m_indent++;
	ret += indent() + (*this)(_node.body) + "\n";
	m_indent--;
	ret += indent() + "))\n";
	m_indent--;
	ret += indent() + "|)";

	return ret;
}

std::string AsmCoqConverter::operator()(If const& _node)
{
	yulAssert(_node.condition, "Invalid if condition.");
	std::string ret = "M.if_ (|\n";
	m_indent++;
	ret += indent() + std::visit(*this, *_node.condition) + ",\n";
	ret += indent() + "ltac:(M.monadic (\n";
	m_indent++;
	ret += indent() + (*this)(_node.body) + "\n";
	m_indent--;
	ret += indent() + "))\n";
	m_indent--;
	ret += indent() + "|)";

	return ret;
}

std::string AsmCoqConverter::operator()(Switch const& _node)
{
	yulAssert(_node.expression, "Invalid expression pointer.");
	std::string ret = "M.switch (|\n";
	m_indent++;
	ret += indent() + std::visit(*this, *_node.expression) + ",\n";
	ret += indent() + "[\n";
	m_indent++;
	bool isFirst = true;
	for (auto const& var: _node.cases)
	{
		if (!isFirst)
			ret += ";\n";
		isFirst = false;
		ret += indent() + (*this)(var);
	}
	m_indent--;
	ret += indent() + "]\n";
	m_indent--;
	ret += indent() + "|)";

	return ret;
}

std::string AsmCoqConverter::operator()(Case const& _node)
{
	std::string ret = "M.case (|\n";
	m_indent++;
	ret += indent() + (_node.value ? (*this)(*_node.value) : "Literal.default") + ",\n";
	ret += indent() + (*this)(_node.body) + "\n";
	m_indent--;
	ret += indent() + "|)";

	return ret;
}

std::string AsmCoqConverter::operator()(ForLoop const& _node)
{
	yulAssert(_node.condition, "Invalid for loop condition.");
	std::string ret = "M.for (|\n";
	m_indent++;
	ret += indent() + (*this)(_node.pre) + ",\n";
	ret += indent() + std::visit(*this, *_node.condition) + ",\n";
	ret += indent() + (*this)(_node.post) + ",\n";
	ret += indent() + (*this)(_node.body) + "\n";
	m_indent--;
	ret += indent() + "|)";

	return ret;
}

std::string AsmCoqConverter::operator()(Break const& _node __attribute__((unused)))
{
	return "M.break";
}

std::string AsmCoqConverter::operator()(Continue const& _node __attribute__((unused)))
{
	return "M.continue";
}

std::string AsmCoqConverter::operator()(Leave const& _node __attribute__((unused)))
{
	return "M.leave";
}

std::string AsmCoqConverter::indent() const
{
	return std::string(2 * m_indent, ' ');
}

}
