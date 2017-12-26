require 'rest-client'
class CryptoExchange
	@@url = 'https://api.coinmarketcap.com/v1/ticker/'
	def initialize
		
	end

	def self.get_all_tickets(limit: nil)
		RestClient.get("#{@@url}?limit=#{limit}")
	end
end