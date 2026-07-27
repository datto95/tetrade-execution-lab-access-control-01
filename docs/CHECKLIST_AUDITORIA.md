# Checklist Rapida de Auditoria - Funcoes Administrativas

## Identificacao

- [ ] Existe alguma funcao que move fundos, muda parametros ou altera permissao?
- [ ] Essa funcao esta claramente separada das funcoes de usuario comum?
- [ ] O nome da funcao deixa a intencao administrativa explicita?

## Controle de acesso

- [ ] Ha um modifier ou checagem explicita de owner/role?
- [ ] O owner e inicializado de forma segura?
- [ ] Existe caminho alternativo que bypassa a verificacao?
- [ ] Enderecos especiais (`address(0)`, `msg.sender`) sao tratados?

## Fluxo de fundos

- [ ] Deposito, saque e sweep possuem limites e validacoes?
- [ ] O contrato evita transferencias antes de atualizar o estado?
- [ ] O contrato falha com mensagens consistentes?

## Cobertura de teste

- [ ] Existe teste de abuso por caller nao autorizado?
- [ ] Existe teste do owner correto?
- [ ] Existe negative control sem saldo ou sem condicao de ataque?
- [ ] Existe fuzz para valores limites relevantes?

## Evidencia

- [ ] Ha evidencia reproduzivel do comportamento esperado?
- [ ] Os testes sao executados de um ambiente limpo?
- [ ] O resultado distingue falha de acesso de outros tipos de falha?

## Sinal de alerta

Se uma funcao administrativa publica nao tiver uma verificacao de permissao clara, trate isso como prioridade alta de revisao.
