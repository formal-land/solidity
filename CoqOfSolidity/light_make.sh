#!/bin/sh

# The light version of a Makefile for testing, as `coqdep` takes several minutes to run on the
# whole project.

# Display the commands being run.
set -x

coqc -R . CoqOfSolidity -impredicative-set CoqOfSolidity.v
coqc -R . CoqOfSolidity -impredicative-set test/libsolidity/semanticTests/various/erc20/ERC20.v
coqc -R . CoqOfSolidity -impredicative-set test/libsolidity/semanticTests/c99_scoping_activation/test.v
coqc -R . CoqOfSolidity -impredicative-set test/libsolidity/semanticTests/abiencodedecode/abi_decode_calldata/C.v
coqc -R . CoqOfSolidity -impredicative-set test/libsolidity/semanticTests/abiencodedecode/abi_decode_simple/C.v
coqc -R . CoqOfSolidity -impredicative-set test/libsolidity/semanticTests/abiencodedecode/abi_decode_simple_storage/C.v
coqc -R . CoqOfSolidity -impredicative-set simulations/CoqOfSolidity.v
