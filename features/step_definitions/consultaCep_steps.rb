Dado("o endereço da API para efetuar a consulta do CEP") do
  $uri_base = "https://viacep.com.br/ws/81750300/json/"
end

Quando("realizar uma requisição para consulta") do
  $response = HTTParty.get($uri_base, :body => {})
end

Então("a API deve retornar os dados do endereço com codigo {int}") do |int|
  #puts "response body #{$response.body}"
  puts "response code #{$response.code}"
end
Então("vejo o código IBGE do endereço") do
  puts " codigo #{$response.body["ibge"]}"
  puts " Numero #{$response.body["4106902"]}"
end
Dado("que eu consulto na API o CEP {int}b{int}a{int} invalido") do |int, int2, int3|
  $uri_base2 = 'https://viacep.com.br/ws/0b00001a000/json/'
end

Entao("devera retornar o http code {int}") do |int|
  $response = HTTParty.get($uri_base2, :body => {})
  puts "response code #{$response.code}"
end