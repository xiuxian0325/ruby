# f14de453e2b1cb2847296af70c95d366
require 'forecast_io'
require 'typhoeus/adapters/faraday'
require 'forecaster'

ForecastIO.configure do |configuration|
  configuration.api_key = 'f14de453e2b1cb2847296af70c95d366'
end

forecast = ForecastIO.forecast(37.8267, -122.423)

puts forecast