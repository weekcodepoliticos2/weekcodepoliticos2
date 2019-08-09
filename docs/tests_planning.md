# weekcodepoliticos2
Planejamento de testes

## Testes de controller
* Testes do controller voting
** O método new retorna status http 200?
** O método create redireciona para ranking#index?
* Testes do controller rangking
** O método index retorna status http 200?

## Testes de Integração 

* Testes da página home
**  Acessando página inicial 
1. Encontro uma foto de cada político?
2. Encontro um botão para cada político?
** Testes da página ranking
* Acessando página ranking
1. Encontro uma lista com os 10 políticos mais votados?

## Testes de services
* Testes do service get_political
** Chamando service get_political e passando um integer como referência de ID o service retorna um deputado salvo no banco? 
* Testes do service import_political
** Chamando service import_political o service busca nas APIs novos políticos para compor o quadro.

## Testes de modelo
* Testes do modelo Politician
** Garantir que ele valide a presença de name, party, state e foto
** Garantir que ele tenha associação com o modelo Rating e Vote

* Testes do modelo Rating
** Garantir que ele valide a presença de value
** Garantir que ele tenha associação com o modelo Vote e Politician

* Testes do modelo Vote
** Garantir que ele tenha associação com o modelo Politician
