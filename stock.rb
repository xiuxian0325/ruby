require 'stock_quote'

# companies = ['aapl', 'tsla', 'msft', 'fb', 'googl']
# companies. each do |com|

DATA. each do |com|
	com.chomp! # enter 지우기위해 사용
	stock = StockQuote::Stock.quote(com)

	puts "#{stock.name}의 가격은 $ #{stock.l}입니다" #l // price
end

__END__
aapl
tsla
msft
fb
googl