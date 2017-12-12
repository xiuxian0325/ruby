require 'launchy'

key = ["수지","아이유","손예진","한가인","이영애"]
url = "search.naver.com/search.naver?where=nexearch&query="

#Launchy.open(url+)

key.each do |word|
	keyword = url + word
Launchy.open(keyword)
end	
