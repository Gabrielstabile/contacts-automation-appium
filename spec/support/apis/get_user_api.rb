require 'rest-client'
require "json"
require 'net/http'
require 'uri'

class RandomUserApi

    def get_user_info
        puts "comecei"
        response = RestClient.get(
            "https://randomuser.me/api/"
        )
        puts "terminei"

        puts response.code
        puts response.body
    end

    def get_user_info_net_http
        uri = URI('https://randomuser.me/api/')
        response = Net::HTTP.get_response(uri)
        puts response.body
        puts response.code
    end
end