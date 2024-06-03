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
 * @date 2017
 * Converts the AST into json format
 */

#include <libsolidity/ast/ASTCoqExporter.h>

#include <libsolidity/ast/AST.h>
#include <libsolidity/ast/TypeProvider.h>

#include <libyul/AsmJsonConverter.h>
#include <libyul/AST.h>
#include <libyul/backends/evm/EVMDialect.h>

#include <libsolutil/JSON.h>
#include <libsolutil/UTF8.h>
#include <libsolutil/CommonData.h>
#include <libsolutil/Visitor.h>
#include <libsolutil/Keccak256.h>

#include <boost/algorithm/string/join.hpp>

#include <utility>
#include <vector>
#include <algorithm>
#include <limits>
#include <type_traits>
#include <range/v3/view/map.hpp>

using namespace std::string_literals;
using namespace solidity::langutil;
using namespace solidity;

namespace
{

template<typename V, template<typename> typename C>
void addIfSet(std::vector<std::pair<std::string, std::string>>& _attributes, std::string const& _name, C<V> const& _value)
{
	if constexpr (std::is_same_v<C<V>, solidity::util::SetOnce<V>>)
	{
		if (!_value.set())
			return;
	}
	else if constexpr (std::is_same_v<C<V>, std::optional<V>>)
	{
		if (!_value.has_value())
			return;
	}

	_attributes.emplace_back(_name, *_value);
}

}

namespace solidity::frontend
{

ASTCoqExporter::ASTCoqExporter(CompilerStack::State _stackState, std::map<std::string, unsigned> _sourceIndices):
	m_stackState(_stackState),
	m_sourceIndices(std::move(_sourceIndices))
{
}


void ASTCoqExporter::setCoqNode(
	ASTNode const& _node,
	std::string const& _nodeName,
	std::initializer_list<std::pair<std::string, std::string>>&& _attributes
)
{
	ASTCoqExporter::setCoqNode(
		_node,
		_nodeName,
		std::vector<std::pair<std::string, std::string>>(std::move(_attributes))
	);
}

void ASTCoqExporter::setCoqNode(
	ASTNode const& _node,
	std::string const& _nodeType,
	std::vector<std::pair<std::string, std::string>>&& _attributes
)
{
	m_currentValue = "";
	m_currentValue += "id: " + nodeId(_node);
	m_currentValue += "src: " + sourceLocationToString(_node.location());
	if (auto const* documented = dynamic_cast<Documented const*>(&_node))
		if (documented->documentation())
			m_currentValue += "documentation: " + *documented->documentation();
	m_currentValue += "nodeType: " + _nodeType;
	for (auto& e: _attributes)
		m_currentValue += e.first + ": " + std::move(e.second);
}

std::optional<size_t> ASTCoqExporter::sourceIndexFromLocation(SourceLocation const& _location) const
{
	if (_location.sourceName && m_sourceIndices.count(*_location.sourceName))
		return m_sourceIndices.at(*_location.sourceName);
	else
		return std::nullopt;
}

std::string ASTCoqExporter::sourceLocationToString(SourceLocation const& _location) const
{
	std::optional<size_t> sourceIndexOpt = sourceIndexFromLocation(_location);
	int length = -1;
	if (_location.start >= 0 && _location.end >= 0)
		length = _location.end - _location.start;
	return std::to_string(_location.start) + ":" + std::to_string(length) + ":" + (sourceIndexOpt.has_value() ? std::to_string(sourceIndexOpt.value()) : "-1");
}

std::string ASTCoqExporter::sourceLocationsToCoq(std::vector<SourceLocation> const& _sourceLocations) const
{
	std::string locations = "[";

	for (SourceLocation const& location: _sourceLocations)
		locations += sourceLocationToString(location) + ", ";

	return locations + "]";
}

std::string ASTCoqExporter::namePathToString(std::vector<ASTString> const& _namePath)
{
	return boost::algorithm::join(_namePath, "."s);
}

std::string ASTCoqExporter::typePointerToCoq(Type const* _tp, bool _withoutDataLocation)
{
	Json typeDescriptions;
	typeDescriptions["typeString"] = _tp ? Json(_tp->toString(_withoutDataLocation)) : "";
	typeDescriptions["typeIdentifier"] = _tp ? Json(_tp->identifier()) : "";

	return typeDescriptions;
}

std::string ASTCoqExporter::typePointerToCoq(std::optional<FuncCallArguments> const& _tps)
{
	if (_tps)
	{
		Json arguments = Json::array();
		for (auto const& tp: _tps->types)
			appendMove(arguments, typePointerToCoq(tp));
		return arguments;
	}
	else
		return Json();
}

void ASTCoqExporter::appendExpressionAttributes(
	std::vector<std::pair<std::string, std::string>>& _attributes,
	ExpressionAnnotation const& _annotation
)
{
	std::vector<std::pair<std::string, std::string>> exprAttributes = {
		std::make_pair("typeDescriptions", typePointerToCoq(_annotation.type)),
		std::make_pair("argumentTypes", typePointerToCoq(_annotation.arguments))
	};

	if (_annotation.isLValue.set())
		exprAttributes.emplace_back("isLValue", std::to_string(*_annotation.isLValue));
	if (_annotation.isPure.set())
		exprAttributes.emplace_back("isPure", std::to_string(*_annotation.isPure));
	if (_annotation.isConstant.set())
		exprAttributes.emplace_back("isConstant", std::to_string(*_annotation.isConstant));

	if (m_stackState > CompilerStack::State::ParsedAndImported)
		exprAttributes.emplace_back("lValueRequested", std::to_string(_annotation.willBeWrittenTo));

	_attributes += exprAttributes;
}

std::string ASTCoqExporter::inlineAssemblyIdentifierToCoq(std::pair<yul::Identifier const*, InlineAssemblyAnnotation::ExternalIdentifierInfo> _info) const
{
	std::string tuple;
	tuple += "src: " + sourceLocationToString(nativeLocationOf(*_info.first));
	tuple += "declaration: " + idOrNull(_info.second.declaration);
	tuple += "isSlot: " + (_info.second.suffix == "slot");
	tuple += "isOffset: " + (_info.second.suffix == "offset");

	if (!_info.second.suffix.empty())
		tuple += "suffix: " + _info.second.suffix;

	tuple += "valueSize: " + static_cast<Json::number_integer_t>(_info.second.valueSize);

	return tuple;
}

void ASTCoqExporter::print(std::ostream& _stream, ASTNode const& _node)
{
	_stream << toCoq(_node);
}

std::string ASTCoqExporter::toCoq(ASTNode const& _node)
{
	_node.accept(*this);
	return m_currentValue;
}

bool ASTCoqExporter::visit(SourceUnit const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("license", _node.licenseString() ? Json(*_node.licenseString()) : ""),
		std::make_pair("nodes", toCoq(_node.nodes())),
	};

	if (_node.experimentalSolidity())
		attributes.emplace_back("experimentalSolidity", Json(_node.experimentalSolidity()));

	if (_node.annotation().exportedSymbols.set())
	{
		Json exportedSymbols = Json::object();
		for (auto const& sym: *_node.annotation().exportedSymbols)
		{
			exportedSymbols[sym.first] = Json::array();
			for (Declaration const* overload: sym.second)
				exportedSymbols[sym.first].emplace_back(nodeId(*overload));
		}

		// attributes.emplace_back("exportedSymbols", exportedSymbols);
		attributes.emplace_back("exportedSymbols", "TODO");
	};

	addIfSet(attributes, "absolutePath", _node.annotation().path);

	setCoqNode(_node, "SourceUnit", std::move(attributes));

	return false;
}

bool ASTCoqExporter::visit(PragmaDirective const& _node)
{
	Json literals = Json::array();
	for (auto const& literal: _node.literals())
		literals.emplace_back(literal);
	setCoqNode(_node, "PragmaDirective", {
		std::make_pair("literals", std::move(literals))
	});
	return false;
}

bool ASTCoqExporter::visit(ImportDirective const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("file", _node.path()),
		std::make_pair("sourceUnit", idOrNull(_node.annotation().sourceUnit)),
		std::make_pair("scope", idOrNull(_node.scope()))
	};

	addIfSet(attributes, "absolutePath", _node.annotation().absolutePath);

	attributes.emplace_back("unitAlias", _node.name());
	attributes.emplace_back("nameLocation", Json(sourceLocationToString(_node.nameLocation())));

	Json symbolAliases = Json::array();
	for (auto const& symbolAlias: _node.symbolAliases())
	{
		Json tuple;
		solAssert(symbolAlias.symbol, "");
		tuple["foreign"] = toCoq(*symbolAlias.symbol);
		tuple["local"] =  symbolAlias.alias ? Json(*symbolAlias.alias) : "";
		tuple["nameLocation"] = sourceLocationToString(_node.nameLocation());
		symbolAliases.emplace_back(tuple);
	}
	attributes.emplace_back("symbolAliases", std::move(symbolAliases));
	setCoqNode(_node, "ImportDirective", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(ContractDefinition const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("name", _node.name()),
		std::make_pair("nameLocation", sourceLocationToString(_node.nameLocation())),
		std::make_pair("documentation", _node.documentation() ? toCoq(*_node.documentation()) : ""),
		std::make_pair("contractKind", contractKind(_node.contractKind())),
		std::make_pair("abstract", std::to_string(_node.abstract())),
		std::make_pair("baseContracts", toCoq(_node.baseContracts())),
		std::make_pair("contractDependencies", getContainerIds(_node.annotation().contractDependencies | ranges::views::keys)),
		// Do not require call graph because the AST is also created for incorrect sources.
		std::make_pair("usedEvents", getContainerIds(_node.interfaceEvents(false))),
		std::make_pair("usedErrors", getContainerIds(_node.interfaceErrors(false))),
		std::make_pair("nodes", toCoq(_node.subNodes())),
		std::make_pair("scope", idOrNull(_node.scope()))
	};
	addIfSet(attributes, "canonicalName", _node.annotation().canonicalName);

	if (_node.annotation().unimplementedDeclarations.has_value())
		attributes.emplace_back("fullyImplemented", std::to_string(_node.annotation().unimplementedDeclarations->empty()));
	if (!_node.annotation().linearizedBaseContracts.empty())
		attributes.emplace_back("linearizedBaseContracts", getContainerIds(_node.annotation().linearizedBaseContracts));

	if (!_node.annotation().internalFunctionIDs.empty())
	{
		Json internalFunctionIDs;
		for (auto const& [functionDefinition, internalFunctionID]: _node.annotation().internalFunctionIDs)
			internalFunctionIDs[std::to_string(functionDefinition->id())] = internalFunctionID;
		attributes.emplace_back("internalFunctionIDs", std::move(internalFunctionIDs));
	}

	setCoqNode(_node, "ContractDefinition", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(IdentifierPath const& _node)
{
	Json nameLocations = Json::array();

	for (SourceLocation location: _node.pathLocations())
		nameLocations.emplace_back(sourceLocationToString(location));

	setCoqNode(_node, "IdentifierPath", {
		std::make_pair("name", namePathToString(_node.path())),
		// std::make_pair("nameLocations", nameLocations),
		std::make_pair("nameLocations", "TODO"),
		std::make_pair("referencedDeclaration", idOrNull(_node.annotation().referencedDeclaration))
	});
	return false;
}

bool ASTCoqExporter::visit(InheritanceSpecifier const& _node)
{
	setCoqNode(_node, "InheritanceSpecifier", {
		std::make_pair("baseName", toCoq(_node.name())),
		std::make_pair("arguments", _node.arguments() ? toCoq(*_node.arguments()) : "")
	});
	return false;
}

bool ASTCoqExporter::visit(UsingForDirective const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("typeName", _node.typeName() ? toCoq(*_node.typeName()) : "")
	};

	if (_node.usesBraces())
	{
		Json functionList = Json::array();
		for (auto&& [function, op]: _node.functionsAndOperators())
		{
			Json functionNode;
			if (!op.has_value())
				functionNode["function"] = toCoq(*function);
			else
			{
				functionNode["definition"] = toCoq(*function);
				functionNode["operator"] = std::string(TokenTraits::toString(*op));
			}
			functionList.emplace_back(std::move(functionNode));
		}
		attributes.emplace_back("functionList", std::move(functionList));
	}
	else
	{
		auto const& functionAndOperators = _node.functionsAndOperators();
		solAssert(_node.functionsAndOperators().size() == 1);
		solAssert(!functionAndOperators.front().second.has_value());
		attributes.emplace_back("libraryName", toCoq(*(functionAndOperators.front().first)));
	}
	attributes.emplace_back("global", std::to_string(_node.global()));

	setCoqNode(_node, "UsingForDirective", std::move(attributes));

	return false;
}

bool ASTCoqExporter::visit(StructDefinition const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("name", _node.name()),
		std::make_pair("nameLocation", sourceLocationToString(_node.nameLocation())),
		std::make_pair("documentation", _node.documentation() ? toCoq(*_node.documentation()) : ""),
		std::make_pair("visibility", Declaration::visibilityToString(_node.visibility())),
		std::make_pair("members", toCoq(_node.members())),
		std::make_pair("scope", idOrNull(_node.scope()))
	};

	addIfSet(attributes,"canonicalName", _node.annotation().canonicalName);

	setCoqNode(_node, "StructDefinition", std::move(attributes));

	return false;
}

bool ASTCoqExporter::visit(EnumDefinition const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("name", _node.name()),
		std::make_pair("nameLocation", sourceLocationToString(_node.nameLocation())),
		std::make_pair("documentation", _node.documentation() ? toCoq(*_node.documentation()) : ""),
		std::make_pair("members", toCoq(_node.members()))
	};

	addIfSet(attributes,"canonicalName", _node.annotation().canonicalName);

	setCoqNode(_node, "EnumDefinition", std::move(attributes));

	return false;
}

bool ASTCoqExporter::visit(EnumValue const& _node)
{
	setCoqNode(_node, "EnumValue", {
		std::make_pair("name", _node.name()),
		std::make_pair("nameLocation", sourceLocationToString(_node.nameLocation())),
	});
	return false;
}

bool ASTCoqExporter::visit(UserDefinedValueTypeDefinition const& _node)
{
	solAssert(_node.underlyingType(), "");
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("name", _node.name()),
		std::make_pair("nameLocation", sourceLocationToString(_node.nameLocation())),
		std::make_pair("underlyingType", toCoq(*_node.underlyingType()))
	};
	addIfSet(attributes, "canonicalName", _node.annotation().canonicalName);

	setCoqNode(_node, "UserDefinedValueTypeDefinition", std::move(attributes));

	return false;
}

bool ASTCoqExporter::visit(ParameterList const& _node)
{
	setCoqNode(_node, "ParameterList", {
		std::make_pair("parameters", toCoq(_node.parameters()))
	});
	return false;
}

bool ASTCoqExporter::visit(OverrideSpecifier const& _node)
{
	setCoqNode(_node, "OverrideSpecifier", {
		std::make_pair("overrides", toCoq(_node.overrides()))
	});
	return false;
}

bool ASTCoqExporter::visit(FunctionDefinition const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("name", _node.name()),
		std::make_pair("nameLocation", sourceLocationToString(_node.nameLocation())),
		std::make_pair("documentation", _node.documentation() ? toCoq(*_node.documentation()) : ""),
		std::make_pair("kind", _node.isFree() ? "freeFunction" : TokenTraits::toString(_node.kind())),
		std::make_pair("stateMutability", stateMutabilityToString(_node.stateMutability())),
		std::make_pair("virtual", std::to_string(_node.markedVirtual())),
		std::make_pair("overrides", _node.overrides() ? toCoq(*_node.overrides()) : ""),
		std::make_pair("parameters", toCoq(_node.parameterList())),
		std::make_pair("returnParameters", toCoq(*_node.returnParameterList())),
		std::make_pair("modifiers", toCoq(_node.modifiers())),
		std::make_pair("body", _node.isImplemented() ? toCoq(_node.body()) : ""),
		std::make_pair("implemented", std::to_string(_node.isImplemented())),
		std::make_pair("scope", idOrNull(_node.scope()))
	};

	std::optional<Visibility> visibility;
	if (_node.isConstructor())
	{
		if (_node.annotation().contract)
			visibility = _node.annotation().contract->abstract() ? Visibility::Internal : Visibility::Public;
	}
	else
		visibility = _node.visibility();

	if (visibility)
		attributes.emplace_back("visibility", Declaration::visibilityToString(*visibility));

	if (_node.isPartOfExternalInterface() && m_stackState > CompilerStack::State::ParsedAndImported)
		attributes.emplace_back("functionSelector", _node.externalIdentifierHex());
	if (!_node.annotation().baseFunctions.empty())
		attributes.emplace_back(std::make_pair("baseFunctions", getContainerIds(_node.annotation().baseFunctions, true)));

	setCoqNode(_node, "FunctionDefinition", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(VariableDeclaration const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("name", _node.name()),
		std::make_pair("nameLocation", sourceLocationToString(_node.nameLocation())),
		std::make_pair("typeName", toCoq(_node.typeName())),
		std::make_pair("constant", std::to_string(_node.isConstant())),
		std::make_pair("mutability", VariableDeclaration::mutabilityToString(_node.mutability())),
		std::make_pair("stateVariable", std::to_string(_node.isStateVariable())),
		std::make_pair("storageLocation", location(_node.referenceLocation())),
		std::make_pair("overrides", _node.overrides() ? toCoq(*_node.overrides()) : ""),
		std::make_pair("visibility", Declaration::visibilityToString(_node.visibility())),
		std::make_pair("value", _node.value() ? toCoq(*_node.value()) : ""),
		std::make_pair("scope", idOrNull(_node.scope())),
		std::make_pair("typeDescriptions", typePointerToCoq(_node.annotation().type, true))
	};
	if (_node.isStateVariable() && _node.isPublic())
		attributes.emplace_back("functionSelector", _node.externalIdentifierHex());
	if (_node.isStateVariable() && _node.documentation())
		attributes.emplace_back("documentation", toCoq(*_node.documentation()));
	if (m_inEvent)
		attributes.emplace_back("indexed", std::to_string(_node.isIndexed()));
	if (!_node.annotation().baseFunctions.empty())
		attributes.emplace_back(std::make_pair("baseFunctions", getContainerIds(_node.annotation().baseFunctions, true)));
	setCoqNode(_node, "VariableDeclaration", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(ModifierDefinition const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("name", _node.name()),
		std::make_pair("nameLocation", sourceLocationToString(_node.nameLocation())),
		std::make_pair("documentation", _node.documentation() ? toCoq(*_node.documentation()) : ""),
		std::make_pair("visibility", Declaration::visibilityToString(_node.visibility())),
		std::make_pair("parameters", toCoq(_node.parameterList())),
		std::make_pair("virtual", std::to_string(_node.markedVirtual())),
		std::make_pair("overrides", _node.overrides() ? toCoq(*_node.overrides()) : ""),
		std::make_pair("body", _node.isImplemented() ? toCoq(_node.body()) : "")
	};
	if (!_node.annotation().baseFunctions.empty())
		attributes.emplace_back(std::make_pair("baseModifiers", getContainerIds(_node.annotation().baseFunctions, true)));
	setCoqNode(_node, "ModifierDefinition", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(ModifierInvocation const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes{
		std::make_pair("modifierName", toCoq(_node.name())),
		std::make_pair("arguments", _node.arguments() ? toCoq(*_node.arguments()) : "")
	};
	if (Declaration const* declaration = _node.name().annotation().referencedDeclaration)
	{
		if (dynamic_cast<ModifierDefinition const*>(declaration))
			attributes.emplace_back("kind", "modifierInvocation");
		else if (dynamic_cast<ContractDefinition const*>(declaration))
			attributes.emplace_back("kind", "baseConstructorSpecifier");
	}
	setCoqNode(_node, "ModifierInvocation", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(EventDefinition const& _node)
{
	m_inEvent = true;
	std::vector<std::pair<std::string, std::string>> _attributes = {
		std::make_pair("name", _node.name()),
		std::make_pair("nameLocation", sourceLocationToString(_node.nameLocation())),
		std::make_pair("documentation", _node.documentation() ? toCoq(*_node.documentation()) : ""),
		std::make_pair("parameters", toCoq(_node.parameterList())),
		std::make_pair("anonymous", std::to_string(_node.isAnonymous()))
	};
	if (m_stackState >= CompilerStack::State::AnalysisSuccessful)
			_attributes.emplace_back(
				std::make_pair(
					"eventSelector",
					toHex(u256(util::h256::Arith(util::keccak256(_node.functionType(true)->externalSignature()))))
				));

	setCoqNode(_node, "EventDefinition", std::move(_attributes));
	return false;
}

bool ASTCoqExporter::visit(ErrorDefinition const& _node)
{
	std::vector<std::pair<std::string, std::string>> _attributes = {
		std::make_pair("name", _node.name()),
		std::make_pair("nameLocation", sourceLocationToString(_node.nameLocation())),
		std::make_pair("documentation", _node.documentation() ? toCoq(*_node.documentation()) : ""),
		std::make_pair("parameters", toCoq(_node.parameterList()))
	};
	if (m_stackState >= CompilerStack::State::AnalysisSuccessful)
		_attributes.emplace_back(std::make_pair("errorSelector", _node.functionType(true)->externalIdentifierHex()));

	setCoqNode(_node, "ErrorDefinition", std::move(_attributes));
	return false;
}

bool ASTCoqExporter::visit(ElementaryTypeName const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("name", _node.typeName().toString()),
		std::make_pair("typeDescriptions", typePointerToCoq(_node.annotation().type, true))
	};

	if (_node.stateMutability())
		attributes.emplace_back(std::make_pair("stateMutability", stateMutabilityToString(*_node.stateMutability())));

	setCoqNode(_node, "ElementaryTypeName", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(UserDefinedTypeName const& _node)
{
	setCoqNode(_node, "UserDefinedTypeName", {
		std::make_pair("pathNode", toCoq(_node.pathNode())),
		std::make_pair("referencedDeclaration", idOrNull(_node.pathNode().annotation().referencedDeclaration)),
		std::make_pair("typeDescriptions", typePointerToCoq(_node.annotation().type, true))
	});
	return false;
}

bool ASTCoqExporter::visit(FunctionTypeName const& _node)
{
	setCoqNode(_node, "FunctionTypeName", {
		std::make_pair("visibility", Declaration::visibilityToString(_node.visibility())),
		std::make_pair("stateMutability", stateMutabilityToString(_node.stateMutability())),
		std::make_pair("parameterTypes", toCoq(*_node.parameterTypeList())),
		std::make_pair("returnParameterTypes", toCoq(*_node.returnParameterTypeList())),
		std::make_pair("typeDescriptions", typePointerToCoq(_node.annotation().type, true))
	});
	return false;
}

bool ASTCoqExporter::visit(Mapping const& _node)
{
	setCoqNode(_node, "Mapping", {
		std::make_pair("keyType", toCoq(_node.keyType())),
		std::make_pair("keyName", _node.keyName()),
		std::make_pair("keyNameLocation", sourceLocationToString(_node.keyNameLocation())),
		std::make_pair("valueType", toCoq(_node.valueType())),
		std::make_pair("valueName", _node.valueName()),
		std::make_pair("valueNameLocation", sourceLocationToString(_node.valueNameLocation())),
		std::make_pair("typeDescriptions", typePointerToCoq(_node.annotation().type, true))
	});
	return false;
}

bool ASTCoqExporter::visit(ArrayTypeName const& _node)
{
	setCoqNode(_node, "ArrayTypeName", {
		std::make_pair("baseType", toCoq(_node.baseType())),
		std::make_pair("length", toCoqOrNull(_node.length())),
		std::make_pair("typeDescriptions", typePointerToCoq(_node.annotation().type, true))
	});
	return false;
}

bool ASTCoqExporter::visit(InlineAssembly const& _node)
{
	std::vector<std::pair<std::string, std::string>> externalReferences;

	for (auto const& it: _node.annotation().externalReferences)
		if (it.first)
			externalReferences.emplace_back(std::make_pair(
				it.first->name.str(),
				inlineAssemblyIdentifierToCoq(it)
			));

	std::string externalReferencesString = "";

	std::sort(externalReferences.begin(), externalReferences.end());
	for (std::string& it: externalReferences | ranges::views::values)
		externalReferencesString += std::move(it);

	std::vector<std::pair<std::string, std::string>> attributes = {
		// std::make_pair("AST", Json(yul::AsmJsonConverter(sourceIndexFromLocation(_node.location()))(_node.operations()))),
		std::make_pair("AST", "YulJson"),
		std::make_pair("externalReferences", std::move(externalReferencesString)),
		std::make_pair("evmVersion", dynamic_cast<solidity::yul::EVMDialect const&>(_node.dialect()).evmVersion().name())
	};

	if (_node.flags())
	{
		Json flags = Json::array();
		for (auto const& flag: *_node.flags())
			if (flag)
				flags.emplace_back(*flag);
			else
				flags.emplace_back(Json());
		attributes.emplace_back(std::make_pair("flags", std::move(flags)));
	}
	setCoqNode(_node, "InlineAssembly", std::move(attributes));

	return false;
}

bool ASTCoqExporter::visit(Block const& _node)
{
	setCoqNode(_node, _node.unchecked() ? "UncheckedBlock" : "Block", {
		std::make_pair("statements", toCoq(_node.statements()))
	});
	return false;
}

bool ASTCoqExporter::visit(PlaceholderStatement const& _node)
{
	setCoqNode(_node, "PlaceholderStatement", {});
	return false;
}

bool ASTCoqExporter::visit(IfStatement const& _node)
{
	setCoqNode(_node, "IfStatement", {
		std::make_pair("condition", toCoq(_node.condition())),
		std::make_pair("trueBody", toCoq(_node.trueStatement())),
		std::make_pair("falseBody", toCoqOrNull(_node.falseStatement()))
	});
	return false;
}

bool ASTCoqExporter::visit(TryCatchClause const& _node)
{
	setCoqNode(_node, "TryCatchClause", {
		std::make_pair("errorName", _node.errorName()),
		std::make_pair("parameters", toCoqOrNull(_node.parameters())),
		std::make_pair("block", toCoq(_node.block()))
	});
	return false;
}

bool ASTCoqExporter::visit(TryStatement const& _node)
{
	setCoqNode(_node, "TryStatement", {
		std::make_pair("externalCall", toCoq(_node.externalCall())),
		std::make_pair("clauses", toCoq(_node.clauses()))
	});
	return false;
}

bool ASTCoqExporter::visit(WhileStatement const& _node)
{
	setCoqNode(
		_node,
		_node.isDoWhile() ? "DoWhileStatement" : "WhileStatement",
		{
			std::make_pair("condition", toCoq(_node.condition())),
			std::make_pair("body", toCoq(_node.body()))
		}
	);
	return false;
}

bool ASTCoqExporter::visit(ForStatement const& _node)
{

	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("initializationExpression", toCoqOrNull(_node.initializationExpression())),
		std::make_pair("condition", toCoqOrNull(_node.condition())),
		std::make_pair("loopExpression", toCoqOrNull(_node.loopExpression())),
		std::make_pair("body", toCoq(_node.body()))
	};

	if (_node.annotation().isSimpleCounterLoop.set())
		attributes.emplace_back("isSimpleCounterLoop", std::to_string(*_node.annotation().isSimpleCounterLoop));

	setCoqNode(_node, "ForStatement", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(Continue const& _node)
{
	setCoqNode(_node, "Continue", {});
	return false;
}

bool ASTCoqExporter::visit(Break const& _node)
{
	setCoqNode(_node, "Break", {});
	return false;
}

bool ASTCoqExporter::visit(Return const& _node)
{
	setCoqNode(_node, "Return", {
		std::make_pair("expression", toCoqOrNull(_node.expression())),
		std::make_pair("functionReturnParameters", idOrNull(_node.annotation().functionReturnParameters))
	});
	return false;
}

bool ASTCoqExporter::visit(Throw const& _node)
{
	setCoqNode(_node, "Throw", {});
	return false;
}

bool ASTCoqExporter::visit(EmitStatement const& _node)
{
	setCoqNode(_node, "EmitStatement", {
		std::make_pair("eventCall", toCoq(_node.eventCall()))
	});
	return false;
}

bool ASTCoqExporter::visit(RevertStatement const& _node)
{
	setCoqNode(_node, "RevertStatement", {
		std::make_pair("errorCall", toCoq(_node.errorCall()))
	});
	return false;
}

bool ASTCoqExporter::visit(VariableDeclarationStatement const& _node)
{
	Json varDecs = Json::array();
	for (auto const& v: _node.declarations())
		appendMove(varDecs, idOrNull(v.get()));
	setCoqNode(_node, "VariableDeclarationStatement", {
		std::make_pair("assignments", std::move(varDecs)),
		std::make_pair("declarations", toCoq(_node.declarations())),
		std::make_pair("initialValue", toCoqOrNull(_node.initialValue()))
	});
	return false;
}

bool ASTCoqExporter::visit(ExpressionStatement const& _node)
{
	setCoqNode(_node, "ExpressionStatement", {
		std::make_pair("expression", toCoq(_node.expression()))
	});
	return false;
}

bool ASTCoqExporter::visit(Conditional const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("condition", toCoq(_node.condition())),
		std::make_pair("trueExpression", toCoq(_node.trueExpression())),
		std::make_pair("falseExpression", toCoq(_node.falseExpression()))
	};
	appendExpressionAttributes(attributes, _node.annotation());
	setCoqNode(_node, "Conditional", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(Assignment const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("operator", TokenTraits::toString(_node.assignmentOperator())),
		std::make_pair("leftHandSide", toCoq(_node.leftHandSide())),
		std::make_pair("rightHandSide", toCoq(_node.rightHandSide()))
	};
	appendExpressionAttributes(attributes, _node.annotation());
	setCoqNode(_node, "Assignment", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(TupleExpression const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("isInlineArray", Json(_node.isInlineArray())),
		std::make_pair("components", toCoq(_node.components())),
	};
	appendExpressionAttributes(attributes, _node.annotation());
	setCoqNode(_node, "TupleExpression", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(UnaryOperation const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("prefix", std::to_string(_node.isPrefixOperation())),
		std::make_pair("operator", TokenTraits::toString(_node.getOperator())),
		std::make_pair("subExpression", toCoq(_node.subExpression()))
	};
	// NOTE: This annotation is guaranteed to be set but only if we didn't stop at the parsing stage.
	if (_node.annotation().userDefinedFunction.set() && *_node.annotation().userDefinedFunction != nullptr)
		attributes.emplace_back("function", std::to_string(nodeId(**_node.annotation().userDefinedFunction)));
	appendExpressionAttributes(attributes, _node.annotation());
	setCoqNode(_node, "UnaryOperation", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(BinaryOperation const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("operator", TokenTraits::toString(_node.getOperator())),
		std::make_pair("leftExpression", toCoq(_node.leftExpression())),
		std::make_pair("rightExpression", toCoq(_node.rightExpression())),
		std::make_pair("commonType", typePointerToCoq(_node.annotation().commonType)),
	};
	// NOTE: This annotation is guaranteed to be set but only if we didn't stop at the parsing stage.
	if (_node.annotation().userDefinedFunction.set() && *_node.annotation().userDefinedFunction != nullptr)
		attributes.emplace_back("function", std::to_string(nodeId(**_node.annotation().userDefinedFunction)));
	appendExpressionAttributes(attributes, _node.annotation());
	setCoqNode(_node, "BinaryOperation", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(FunctionCall const& _node)
{
	Json names = Json::array();
	for (auto const& name: _node.names())
		names.push_back(Json(*name));
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("expression", toCoq(_node.expression())),
		std::make_pair("names", std::move(names)),
		std::make_pair("nameLocations", sourceLocationsToCoq(_node.nameLocations())),
		std::make_pair("arguments", toCoq(_node.arguments())),
		std::make_pair("tryCall", std::to_string(_node.annotation().tryCall))
	};

	if (_node.annotation().kind.set())
	{
		FunctionCallKind nodeKind = *_node.annotation().kind;
		attributes.emplace_back("kind", functionCallKind(nodeKind));
	}

	appendExpressionAttributes(attributes, _node.annotation());
	setCoqNode(_node, "FunctionCall", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(FunctionCallOptions const& _node)
{
	Json names = Json::array();
	for (auto const& name: _node.names())
		names.emplace_back(Json(*name));

	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("expression", toCoq(_node.expression())),
		std::make_pair("names", std::move(names)),
		std::make_pair("options", toCoq(_node.options())),
	};
	appendExpressionAttributes(attributes, _node.annotation());

	setCoqNode(_node, "FunctionCallOptions", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(NewExpression const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("typeName", toCoq(_node.typeName()))
	};
	appendExpressionAttributes(attributes, _node.annotation());
	setCoqNode(_node, "NewExpression", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(MemberAccess const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("memberName", _node.memberName()),
		std::make_pair("memberLocation", Json(sourceLocationToString(_node.memberLocation()))),
		std::make_pair("expression", toCoq(_node.expression())),
		std::make_pair("referencedDeclaration", idOrNull(_node.annotation().referencedDeclaration)),
	};
	appendExpressionAttributes(attributes, _node.annotation());
	setCoqNode(_node, "MemberAccess", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(IndexAccess const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("baseExpression", toCoq(_node.baseExpression())),
		std::make_pair("indexExpression", toCoqOrNull(_node.indexExpression())),
	};
	appendExpressionAttributes(attributes, _node.annotation());
	setCoqNode(_node, "IndexAccess", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(IndexRangeAccess const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("baseExpression", toCoq(_node.baseExpression())),
		std::make_pair("startExpression", toCoqOrNull(_node.startExpression())),
		std::make_pair("endExpression", toCoqOrNull(_node.endExpression())),
	};
	appendExpressionAttributes(attributes, _node.annotation());
	setCoqNode(_node, "IndexRangeAccess", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(Identifier const& _node)
{
	Json overloads = Json::array();
	for (auto const& dec: _node.annotation().overloadedDeclarations)
		overloads.emplace_back(nodeId(*dec));
	setCoqNode(_node, "Identifier", {
		std::make_pair("name", _node.name()),
		std::make_pair("referencedDeclaration", idOrNull(_node.annotation().referencedDeclaration)),
		std::make_pair("overloadedDeclarations", overloads),
		std::make_pair("typeDescriptions", typePointerToCoq(_node.annotation().type)),
		std::make_pair("argumentTypes", typePointerToCoq(_node.annotation().arguments))
	});
	return false;
}

bool ASTCoqExporter::visit(ElementaryTypeNameExpression const& _node)
{
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("typeName", toCoq(_node.type()))
	};
	appendExpressionAttributes(attributes, _node.annotation());
	setCoqNode(_node, "ElementaryTypeNameExpression", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(Literal const& _node)
{
	Json value = _node.value();
	if (!util::validateUTF8(_node.value()))
		value = Json();
	Token subdenomination = Token(_node.subDenomination());
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("kind", literalTokenKind(_node.token())),
		std::make_pair("value", value),
		std::make_pair("hexValue", util::toHex(util::asBytes(_node.value()))),
		std::make_pair(
			"subdenomination",
			subdenomination == Token::Illegal ?
			Json() :
			Json(TokenTraits::toString(subdenomination))
		)
	};
	appendExpressionAttributes(attributes, _node.annotation());
	setCoqNode(_node, "Literal", std::move(attributes));
	return false;
}

bool ASTCoqExporter::visit(StructuredDocumentation const& _node)
{
	Json text = *_node.text();
	std::vector<std::pair<std::string, std::string>> attributes = {
		std::make_pair("text", text)
	};
	setCoqNode(_node, "StructuredDocumentation", std::move(attributes));
	return false;
}

void ASTCoqExporter::endVisit(EventDefinition const&)
{
	m_inEvent = false;
}

bool ASTCoqExporter::visitNode(ASTNode const& _node)
{
	solAssert(false, _node.experimentalSolidityOnly() ?
		"Attempt to export an AST of experimental solidity." :
		"Attempt to export an AST that contains unexpected nodes."
	);
	return false;
}

std::string ASTCoqExporter::location(VariableDeclaration::Location _location)
{
	switch (_location)
	{
	case VariableDeclaration::Location::Unspecified:
		return "default";
	case VariableDeclaration::Location::Storage:
		return "storage";
	case VariableDeclaration::Location::Memory:
		return "memory";
	case VariableDeclaration::Location::CallData:
		return "calldata";
	}
	// To make the compiler happy
	return {};
}

std::string ASTCoqExporter::contractKind(ContractKind _kind)
{
	switch (_kind)
	{
	case ContractKind::Interface:
		return "interface";
	case ContractKind::Contract:
		return "contract";
	case ContractKind::Library:
		return "library";
	}

	// To make the compiler happy
	return {};
}

std::string ASTCoqExporter::functionCallKind(FunctionCallKind _kind)
{
	switch (_kind)
	{
	case FunctionCallKind::FunctionCall:
		return "functionCall";
	case FunctionCallKind::TypeConversion:
		return "typeConversion";
	case FunctionCallKind::StructConstructorCall:
		return "structConstructorCall";
	default:
		solAssert(false, "Unknown kind of function call.");
	}
}

std::string ASTCoqExporter::literalTokenKind(Token _token)
{
	switch (_token)
	{
	case Token::Number:
		return "number";
	case Token::StringLiteral:
		return "string";
	case Token::UnicodeStringLiteral:
		return "unicodeString";
	case Token::HexStringLiteral:
		return "hexString";
	case Token::TrueLiteral:
	case Token::FalseLiteral:
		return "bool";
	default:
		solAssert(false, "Unknown kind of literal token.");
	}
}

std::string ASTCoqExporter::type(Expression const& _expression)
{
	return _expression.annotation().type ? _expression.annotation().type->toString() : "Unknown";
}

std::string ASTCoqExporter::type(VariableDeclaration const& _varDecl)
{
	return _varDecl.annotation().type ? _varDecl.annotation().type->toString() : "Unknown";
}

}
