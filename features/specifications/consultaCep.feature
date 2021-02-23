#language: pt
@consultaCep
Funcionalidade: Retornar codigo IBGE a partir do CEP
Como usuario 
Eu quero realizar as requisições na API
A fim de manipular o codigo IBGE

@cep_valido
Cenário: Consulta a partir do CEP que retorna codigo IBGE.
Dado o endereço da API para efetuar a consulta do CEP
Quando realizar uma requisição para consulta
Então a API deve retornar os dados do endereço com codigo 200
E vejo o código IBGE do endereço

@cep_invalido
  Cenario: Consultar CEP invalido
    Dado que eu consulto na API o CEP 0b00001a000 invalido
    Entao devera retornar o http code 400