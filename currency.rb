require 'eu_central_bank'

# from = 'USD'
# to   = 'KRW'

# bank = EuCentralBank.new
# bank.update_rates #환율 업데이트

# result = bank.exchange(100, from, to) #100센트

# puts "#{from} => #{to} : $1 => #{result}원".

bank = EuCentralBank.new
bank.update_rates

puts "$1 => #{bank.exchange(100, 'USD', 'KRW')}원"
