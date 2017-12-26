require 'rest-client'

module RawRequest
  def get_request(options)
    RestClient.get(options)
  end
end
