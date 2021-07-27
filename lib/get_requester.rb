require "net/http"
require "open-uri"
require "json"
require "pry"


class GetRequester
    
    attr_reader :url


    def initialize(url)
        @url = url
    end


    def get_response_body

        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.body
        # binding.pry
    end

    def parse_json
        data = JSON.parse(self.get_response_body)

        # binding.pry
    end


end