#!/bin/sh
set -x #echo on

# Generate various files needed for the verification of the contracts.
#
# We assume that `solc` has been compiled from the source in the `build/` directory at the root of
# the repository. This script should be launched from the `coq/` directory.

# erc20
../build/solc/solc --ir-coq --optimize CoqOfSolidity/contracts/erc20/contract.sol \
  > CoqOfSolidity/contracts/erc20/contract.v
../build/solc/solc --ir-optimized --optimize CoqOfSolidity/contracts/erc20/contract.sol \
  > CoqOfSolidity/contracts/erc20/contract.yul
../build/solc/solc --ir-optimized-ast-json --optimize CoqOfSolidity/contracts/erc20/contract.sol \
  | tail -1 \
  | jq 'walk(if type == "object" then del(.nativeSrc, .src, .type) else . end)' \
  > CoqOfSolidity/contracts/erc20/contract.json
python scripts/shallow_embed.py CoqOfSolidity/contracts/erc20/contract.json \
  > CoqOfSolidity/contracts/erc20/shallow.v
# python scripts/shallow_embed_proof.py CoqOfSolidity/contracts/erc20/contract.json \
#   > CoqOfSolidity/contracts/erc20/shallow_proof.v

# SCL_mulmuladdX_fullgen_b4
# We only use the optimization to group the functions at top-level, as we do not handle them otherwise.
# This is the optimization with the flag "hg".
../build/solc/solc --ir-coq --optimize --yul-optimizations hg CoqOfSolidity/contracts/scl/mulmuladdX_fullgen_b4/contract.sol \
  > CoqOfSolidity/contracts/scl/mulmuladdX_fullgen_b4/contract.v
# ../build/solc/solc --ir CoqOfSolidity/contracts/scl/mulmuladdX_fullgen_b4/contract.sol \
#   > CoqOfSolidity/contracts/scl/mulmuladdX_fullgen_b4/contract.yul
# ../build/solc/solc --ir-optimized-ast-json --optimize --yul-optimizations hg CoqOfSolidity/contracts/scl/mulmuladdX_fullgen_b4/contract.sol \
#   | tail -1 \
#   | jq 'walk(if type == "object" then del(.nativeSrc, .src, .type) else . end)' \
#   > CoqOfSolidity/contracts/scl/mulmuladdX_fullgen_b4/contract.json
# ../build/solc/solc --ir-ast-json CoqOfSolidity/contracts/scl/mulmuladdX_fullgen_b4/contract.sol \
#   | tail -1 \
#   | jq 'walk(if type == "object" then del(.nativeSrc, .src, .type) else . end)' \
#   > CoqOfSolidity/contracts/scl/mulmuladdX_fullgen_b4/contract.json
python scripts/shallow_embed.py CoqOfSolidity/contracts/scl/mulmuladdX_fullgen_b4/contract.json \
  > CoqOfSolidity/contracts/scl/mulmuladdX_fullgen_b4/shallow.v
# python scripts/shallow_embed_proof.py CoqOfSolidity/contracts/scl/mulmuladdX_fullgen_b4/contract.json \
#   > CoqOfSolidity/contracts/scl/mulmuladdX_fullgen_b4/shallow_proof.v

# tutorial
../build/solc/solc --ir-coq --optimize CoqOfSolidity/contracts/tutorial/contract.sol \
  > CoqOfSolidity/contracts/tutorial/contract.v
../build/solc/solc --ir CoqOfSolidity/contracts/tutorial/contract.sol \
  > CoqOfSolidity/contracts/tutorial/contract.yul
../build/solc/solc --ir-ast-json CoqOfSolidity/contracts/tutorial/contract.sol \
  | tail -1 \
  | jq 'walk(if type == "object" then del(.nativeSrc, .src, .type) else . end)' \
  > CoqOfSolidity/contracts/tutorial/contract.json
python scripts/shallow_embed.py CoqOfSolidity/contracts/tutorial/contract.json \
  > CoqOfSolidity/contracts/tutorial/shallow.v
