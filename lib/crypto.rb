require "#{Dir.pwd}/lib/raw_request.rb"
class CryptoExchange
  extend RawRequest
  @@url = 'https://api.coinmarketcap.com/v1/ticker/'

  def initialize
  end

  def self.get_all_tickets(limit: nil)
    get_request("#{@@url}?limit=#{limit}")
  end

  def self.find_by_name(name)
    get_request("#{@@url}/#{name}/")
  end
end
