require 'httparty'
require 'nokogiri'

# url = 'http://finance.naver.com/sise/'
# response = HTTParty.get(url)
# text = Nokogiri::HTML(response.body)

# kospi = text.css('#KOSPI_now')
# kosdaq = text.css('#KOSDAQ_now')
# kospi200 = text.css('#KPI200_now')

# puts kospi.text
# puts kosdaq.text
# puts kospi200.text

#key = ['#_nx_aside_realtime > div.realtime_srch > ol.lst_realtime_srch._rolling_chart._content > li._item.selected > div > div.roll.bton._cur > span > a.keyword._link > span']
url = 'https://www.naver.com/'
response = HTTParty.get(url)
text = Nokogiri::HTML(response.body)

key = text.css('#PM_ID_ct > div.header > div.section_navbar > div.area_hotkeyword.PM_CL_realtimeKeyword_base > div.ah_roll.PM_CL_realtimeKeyword_rolling_base > div > ul > li:nth-child(5) > a')

puts key
