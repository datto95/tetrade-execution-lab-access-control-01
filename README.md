# access-control-01

[![CI](https://github.com/datto95/tetrade-execution-lab-access-control-01/actions/workflows/ci.yml/badge.svg)](https://github.com/datto95/tetrade-execution-lab-access-control-01/actions/workflows/ci.yml)

Didactic proof of concept for the Tétrade execution lab.

This lab demonstrates an access-control failure where a missing owner check allows an unauthorized caller to sweep treasury funds.

## What this lab proves

1. An unauthorized caller can drain a vulnerable treasury.
2. The same action fails against the corrected treasury.
3. A negative control prevents false positives.
4. Evidence is generated in structured JSON.
5. The workflow is reproducible from a clean environment.

## Project structure

- `src/VulnerableTreasury.sol`: treasury with a missing access-control check on `sweep`.
- `src/FixedTreasury.sol`: corrected treasury with `onlyOwner` protection.
- `test/AccessControlExploit.t.sol`: exploit, fix, and negative-control tests.

## Prerequisites

- Foundry installed and available in `PATH` (`forge`, `cast`, `anvil`)
- Python 3.10+ installed

## Quick start

```bash
forge build
forge test -vvv
python3 scripts/generate_evidence.py
python3 scripts/generate_evidence.py --validate-only evidence/evidence.json
```

## Useful commands

```bash
make build
make test
make evidence
make validate
```

## Expected test signals

- Unauthorized sweep drains the vulnerable treasury.
- Unauthorized sweep is rejected by the fixed treasury.
- Empty-treasury negative control does not produce a false positive.

## Notes

- This is a didactic access-control pattern inspired by common treasury compromise incidents.
- It is not a reproduction of any specific real-world protocol internals.

## Notes

- This is a didactic access-control pattern inspired by common treasury compromise incidents.
- It is not a reproduction of any specific real-world protocol internals.
