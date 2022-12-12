require 'uri'
require 'net/http'
require 'openssl'
class TestController < ApplicationController
   

    def all_songs

        songs= get_songs

       render json: songs, status: :ok
    end

    def song
        
        songs= get_songs
        song_id = params[:id].to_i
        

      render json: songs[song_id], status: :ok
    end

  def get_track_details

     song_id = params[:track_id]

     url = URI("https://shazam-core.p.rapidapi.com/v1/tracks/details?track_id=#{params[:track_id]}")
    
     http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
     
      request = Net::HTTP::Get.new(url)
      request["X-RapidAPI-Key"] = 'a0554f65f6mshf74a9ae52ae50dep13e0acjsncf0c84aec583'
      request["X-RapidAPI-Host"] = 'shazam-core.p.rapidapi.com'
     
      response = http.request(request)

      song =JSON.parse(response.body)
    
      render json: song, status: :ok
     end


    # trying to fix bug here, uncomment below
    # def song
        
    #     songs= get_track_details
    #     song_id = params[:id].to_i
        

    #   render json: songs[song_id], status: :ok
    # end


 
    private

    def get_songs
        url = URI("https://shazam-core.p.rapidapi.com/v1/charts/world")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
        request = Net::HTTP::Get.new(url)
        request["X-RapidAPI-Key"] = 'a0554f65f6mshf74a9ae52ae50dep13e0acjsncf0c84aec583'
        request["X-RapidAPI-Host"] = 'shazam-core.p.rapidapi.com'
        
        response = http.request(request)

        songs =JSON.parse(response.body)
    end

    # trying to fix bug here, uncomment below
    # def get_track_details
    #     url = URI("https://shazam-core.p.rapidapi.com/v1/tracks/details?track_id=#{:songid}")

    #     http = Net::HTTP.new(url.host, url.port)
    #     http.use_ssl = true
    #     http.verify_mode = OpenSSL::SSL::VERIFY_NONE
        
    #     request = Net::HTTP::Get.new(url)
    #     request["X-RapidAPI-Key"] = 'a0554f65f6mshf74a9ae52ae50dep13e0acjsncf0c84aec583'
    #     request["X-RapidAPI-Host"] = 'shazam-core.p.rapidapi.com'
        
    #     response = http.request(request)

    #     songs =JSON.parse(response.body)
    #     byebug
    # end

  
end
