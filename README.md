# 🪨🐓 coq-of-solidity
> A formal verification tool for [Solidity](https://soliditylang.org/) using the [Coq](https://coq.inria.fr/) proof system

Formal verification is about verifying code for all possible inputs. It goes further than traditional testing that only covers a finite amount of cases. Formal verification relies on using mathematical methods to analyze the code.

Formal verification provides:

1. **More security for code audits:** all the combination of inputs are covered, in contrast to testing.
2. **Reusable audits** for future code changes: we can re-run the proofs as the code evolves.

The `coq-of-solidity` project is open-source and uses the interactive theorem prover Coq to be able to check arbitrarily complex properties of Solidity smart contracts.

## 🙏 Thanks

We thanks the [AlephZero Foundation](https://alephzero.org/) for their support and funding this project.

<!-- contact -->
## 📬 Contact

If you have smart contracts that you wish to audit with a maximum level of security, or want to know more about this project, do not hesitate to contact us at [contact@formal.land](mailto:contact@formal.land). We provide formal verification services for Solidity, Rust, OCaml, Python.

## 🚀 Quick start

This project is based on a fork of the [`solc` Solidity compiler](https://github.com/ethereum/solidity). Compile it following the [manual of `solc`](https://docs.soliditylang.org/en/latest/installing-solidity.html#building-from-source) to obtain a `solc` binary.

Then, assuming that you are at the root of this project, run the following commands:

```sh
build/solc/solc --ir-coq my_smart_contract.sol
```

It will pretty-print on the terminal a Coq version of the code. Examples of contracts that are already translated in Coq are in the [CoqOfSolidity/](CoqOfSolidity/) folder.

We successfully translate and run more than 90% of the Solidity compiler tests in [test/libsolidity/semanticTests/](test/libsolidity/semanticTests/). The main missing features are the pre-compiled contracts and error cases in contract calls. The main file to extract the semantic tests with the execution trace to Coq is [test/libsolidity/SemanticTest.cpp](test/libsolidity/SemanticTest.cpp):

- example source test: [test/libsolidity/semanticTests/various/erc20.sol](test/libsolidity/semanticTests/various/erc20.sol)
- Coq output: [CoqOfSolidity/test/libsolidity/semanticTests/various/erc20/GeneratedTest.v](CoqOfSolidity/test/libsolidity/semanticTests/various/erc20/GeneratedTest.v)

Assuming that you have a working installation of the Coq system, you can compile the existing translated code with:

```sh
cd CoqOfSolidity
make -j4 -k
```

The Coq compilation take a lot of time as there are a lot of generated files.

The translated Coq files can sometimes be a bit too verbose. You can have a better readability by generating the original Yul code that we use to generate the Coq translation with:

```sh
build/solc/solc --ir-optimized my_smart_contract.sol
```

## 🏗️ Architecture

This project is build as a fork of the official `solc` compiler in order to re-use the frontend (parser, type-checker, ...) and stay up-to-date with the Solidity language. The `solc` compiler is a C++ project that compiles Solidity code to EVM bytecode.

We translate the intermediate language [Yul](https://docs.soliditylang.org/en/latest/yul.html) to Coq. Yul is a low-level intermediate language used by the Solidity compiler that is both simpler than Solidity and more high-level than EVM bytecode. The relevant code is in [libyul/AsmCoqConverter.cpp](libyul/AsmCoqConverter.cpp).

We then define in Coq the semantics of the Yul language as well as of all the EVM primitives (addition, multiplication, keccak256, contract calls, ...). This is done in the two following files:

- [CoqOfSolidity/CoqOfSolidity.v](CoqOfSolidity/CoqOfSolidity.v) for the semantics of the Yul language
- [CoqOfSolidity/simulations/CoqOfSolidity.v](CoqOfSolidity/simulations/CoqOfSolidity.v) for the semantics of the EVM primitives

To prevent mistakes in our Coq definitions, we also translate the `semanticTests` of the Solidity compiler to Coq and re-run them in Coq. We then check that we get the exact same outputs as on code generated by the official Solidity compiler.

## 🧪 Build the tests

To build the tests you need to:

1. Translate the test files to Coq with the following commands:
    ```sh
    cd CoqOfSolidity
    python translate_from_tests.py
    ```
    This will generate one `.v` file per contract in the `semanticTests` and `syntaxTests` folders.
2. Generate the test files corresponding to the execution traces with the following commands:
    ```sh
    build/test/soltest --run_test=semanticTests
    ```
    This will generate one `GeneratedTest.v` file per semantic test. This commands take several minutes to run, as it also compiles and executes each of the contract in the semantic tests. This command might require a few dependencies to run, like [evmone](https://github.com/ethereum/evmone). You can first try to make this test command work in upstream repository of Solidity.
3. Then you can compile them with:
    ```sh
    cd CoqOfSolidity
    make -j4 -k
    ```
    For the syntax tests it will verify that the translated Coq code type checks. For the semantic tests it will verify that the execution trace of the contract is the same in Coq as with the Solidity compiler, in addition of type checking the translated code.

We do not support yet all the semantic tests but around 90% and are working on the remaining ones.

## 📚 Example

For now writing proofs on the generated code is still a work in progress and we focused on making a translation with a correct execution. To give an idea of what the Coq translation looks like, the following Solidity code:

```solidity
function balanceOf(address owner) public view returns (uint256) {
  return _balances[owner];
}
```

translates in Coq to:

```coq
(* Generated by coq-of-solidity *)

M.function (|
  "fun_balanceOf",
  ["var_owner"],
  ["var"],
  M.scope (
    do* ltac:(M.monadic (
      M.declare (|
        ["zero_t_uint256"],
        Some (M.call (|
          "zero_value_for_split_uint256",
          []
        |))
      |)
    )) in
    do* ltac:(M.monadic (
      M.assign (|
        ["var"],
        Some (M.get_var (| "zero_t_uint256" |))
      |)
    )) in
    do* ltac:(M.monadic (
      M.declare (|
        ["_28_slot"],
        Some ([Literal.number 0x00])
      |)
    )) in
    do* ltac:(M.monadic (
      M.declare (|
        ["expr_54_slot"],
        Some (M.get_var (| "_28_slot" |))
      |)
    )) in
    do* ltac:(M.monadic (
      M.declare (|
        ["_1"],
        Some (M.get_var (| "var_owner" |))
      |)
    )) in
    do* ltac:(M.monadic (
      M.declare (|
        ["expr"],
        Some (M.get_var (| "_1" |))
      |)
    )) in
    do* ltac:(M.monadic (
      M.declare (|
        ["_2"],
        Some (M.call (|
          "mapping_index_access_mapping_address_uint256_of_address",
          [
            M.get_var (| "expr_54_slot" |);
            M.get_var (| "expr" |)
          ]
        |))
      |)
    )) in
    do* ltac:(M.monadic (
      M.declare (|
        ["_3"],
        Some (M.call (|
          "read_from_storage_split_offset_uint256",
          [
            M.get_var (| "_2" |)
          ]
        |))
      |)
    )) in
    do* ltac:(M.monadic (
      M.declare (|
        ["expr_1"],
        Some (M.get_var (| "_3" |))
      |)
    )) in
    do* ltac:(M.monadic (
      M.assign (|
        ["var"],
        Some (M.get_var (| "expr_1" |))
      |)
    )) in
    do* ltac:(M.monadic (
      M.leave (||)
    )) in
    M.pure BlockUnit.Tt
  )
|)
```

The Coq output is much more verbose than the original Solidity and must be simplified in a first proof step.

## 📝 License

The code of the translation is under the GPL-3.0 license as this is a fork of the Solidity compiler. The code of the Coq semantics is under the MIT license.
