require 'colorize'
require 'json'
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

  def self.get_all_and_save(path: "#{Dir.pwd}/files/")
    data = get_request(@@url)
    File.open("#{Dir.pwd}/files/data.json", "w") { |file| file.write(data); file.close() }
    puts "File has been saved".green
    rescue => exception
    puts "Error to save".red
    puts exception.red
  end
end
