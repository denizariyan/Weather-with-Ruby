require 'json'
require 'rest-client'
puts " "
print "Lutfen bir sehir ismi girin:"
sehir = gets.chomp
data = JSON.parse(RestClient.get("http://api.openweathermap.org/data/2.5/weather?q=#{sehir}&units=metric&appid=f70cdd972aa5faa5167173d3fb70f166&lang=tr").body)
puts  "Hava Durumu Suanda: #{data["weather"][0]["description"]}"
