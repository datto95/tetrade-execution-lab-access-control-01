# Guia do Aluno - access-control-01

## Objetivo

Explorar uma falha de controle de acesso em um treasury didatico, comparar o contrato vulneravel com o contrato corrigido e gerar evidencia reproduzivel.

## Requisitos

- Foundry instalado (`forge`, `cast`, `anvil`)
- Python 3.10+

## Passo a passo

1. Rode a compilacao.

   ```bash
   forge build
   ```

2. Execute os testes.

   ```bash
   forge test -vvv
   ```

3. Gere a evidencia estruturada.

   ```bash
   python3 scripts/generate_evidence.py
   ```

4. Valide a evidencia gerada.

   ```bash
   python3 scripts/generate_evidence.py --validate-only evidence/evidence.json
   ```

5. Revise o resultado esperado.

   - O treasury vulneravel permite sweep sem verificar o owner.
   - O treasury corrigido bloqueia o caller nao autorizado.
   - O negative control evita falso positivo.

## O que observar

- `testUnauthorizedSweepDrainsVulnerableTreasury`
- `testUnauthorizedSweepFailsAgainstFixedTreasury`
- `testNegativeControlNoFundsNoSignal`
- `testOwnerCanSweepFixedTreasury`

## Dica de estudo

Compare as assinaturas de `sweep` nos dois contratos e identifique a unica diferenca que muda o comportamento de seguranca.
