require 'rest-client'
require "json"
require 'net/http'
require 'uri'

class RandomUserApi

    $first_name = ''
    $last_name = ''

    def get_user_info_rest_client
        response = RestClient.get(
            "https://random-data-api.com/api/v2/users"
        )

        parsed_response = JSON.parse(response)
        $first_name = parsed_response['first_name']
        $last_name = parsed_response['last_name']
    end

    def get_user_info_net_http
        url = URI('https://random-data-api.com/api/v2/users')
        https = Net::HTTP.new(url.host, url.port)
        https.use_ssl = true
        request = Net::HTTP::Get.new(url)

        response = https.request(request)
        response_json = JSON.parse(response.body)

        $first_name = response_json['first_name']
        $last_name = response_json['last_name']
    end
end