require 'uri'
require 'net/http'
require 'openssl'
class TestController < ApplicationController
    def index
        url = URI("https://shazam-core.p.rapidapi.com/v1/charts/world")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
        request = Net::HTTP::Get.new(url)
        request["X-RapidAPI-Key"] = 'a0554f65f6mshf74a9ae52ae50dep13e0acjsncf0c84aec583'
        request["X-RapidAPI-Host"] = 'shazam-core.p.rapidapi.com'
        
        response = http.request(request)
        render json: response.read_body, status: :ok
    end
end
