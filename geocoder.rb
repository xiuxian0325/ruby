require 'geocoder'

print '어디가 궁굼하세요?'
location =  gets.chomp!

puts loCord = Geocoder.coordiates(location)

