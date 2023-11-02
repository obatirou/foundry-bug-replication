-include .env

.PHONY: test

all: clean upgrade yarn-install husky-install build test snapshot format

clean  :; forge clean

upgrade :; foundryup

yarn-install :; yarn install

husky-install :; npx husky install

build:; forge build

test :; forge test

snapshot :; forge snapshot

format :; forge fmt

anvil :; anvil -m 'test test test test test test test test test test test junk' --fork-url ${ANVIL_FORK_URL} --hardfork shanghai

script-RunComputeAddress :; forge script script/Run.s.sol:RunComputeAddress --rpc-url http://localhost:8545 --evm-version paris

