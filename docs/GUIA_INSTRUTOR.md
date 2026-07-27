# Guia do Instrutor - access-control-01

## Objetivo da atividade

Demonstrar, de forma pratica, como a ausencia de verificacao de owner em uma funcao administrativa permite drenagem indevida de fundos.

## Roteiro sugerido

1. Apresente o contrato vulneravel.
2. Peça que o aluno identifique a superficie administrativa.
3. Execute os testes para mostrar o abuso e a correção.
4. Mostre a evidencia gerada em JSON.
5. Discuta como o negative control evita conclusoes erradas.

## Pontos de discussao

- Qual e o impacto de expor `sweep` sem `onlyOwner`?
- Por que o owner e definido no construtor?
- O que o teste de owner correto prova alem do teste de ataque?
- Qual e a utilidade do fuzz em limites de deposito?
- O gas report ajuda em qual tipo de comparacao?

## Resultado esperado

O participante deve concluir que:

- funcoes administrativas precisam de controle de acesso explicito;
- testes positivos e negativos devem coexistir;
- evidencia automatizada reduz ambiguidade na avaliacao;
- a correcao precisa ser validada por comportamento, nao apenas por leitura de codigo.

## Materiais de apoio

- `README.md`
- `docs/ROTEIRO.md`
- `docs/CHECKLIST_AUDITORIA.md`
