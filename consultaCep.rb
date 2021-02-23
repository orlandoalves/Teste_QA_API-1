require 'httparty'

response = HTTParty.get('https://viacep.com.br/ws/81750300/json/')

puts response.code, response.headers, response.body