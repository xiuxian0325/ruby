require 'stock_quote'
require 'eu_central_bank'


companies = ['aapl', 'tsla', 'msft', 'fb']

def exchange(from, to, amount)
	# if amount.is_a?(String)
	# 	amount = amount.to_i
	# end

	amount = amount.to_i if amount.is_a?(String)

	bank = EuCentralBank.new
	bank.update_rates 
	
	amount * bank.exchange(100, from, to)
end


# companies. each do |com|
ARGV. each do |com|
	stock = StockQuote::Stock.quote(com)
	puts "#{stock.name}의 가격은 $ #{stock.l} / #{exchange('USD', 'KRW', stock.l)} 원 입니다" 
end

