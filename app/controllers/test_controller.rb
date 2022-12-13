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

     song_id = song_id.to_i

     url = URI("https://shazam-core.p.rapidapi.com/v1/tracks/details?track_id=#{params[:song_id]}")
    
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

  def get_related_tracks

     song_id = song_id.to_i

     url = URI("https://shazam-core.p.rapidapi.com/v1/tracks/related?track_id=#{params[:song_id]}")
    
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

  def get_artist_details

     artist_id = artist_id.to_i

     url = URI("https://shazam-core.p.rapidapi.com/v1/artist/details?artist_id=#{params[:artist_id]}")
    
     http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
     
      request = Net::HTTP::Get.new(url)
      request["X-RapidAPI-Key"] = 'a0554f65f6mshf74a9ae52ae50dep13e0acjsncf0c84aec583'
      request["X-RapidAPI-Host"] = 'shazam-core.p.rapidapi.com'
     
      response = http.request(request)

      artist =JSON.parse(response.body)
    
      render json: artist, status: :ok
    end

  def get_search_term

     search_term = search_term

     url = URI("https://shazam-core.p.rapidapi.com/v1/search/multi?search_type=SONGS_ARTISTS&query=#{params[:search_term]}")
    
     http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
     
      request = Net::HTTP::Get.new(url)
      request["X-RapidAPI-Key"] = 'a0554f65f6mshf74a9ae52ae50dep13e0acjsncf0c84aec583'
      request["X-RapidAPI-Host"] = 'shazam-core.p.rapidapi.com'
     
      response = http.request(request)

      artist =JSON.parse(response.body)
    
      render json: artist, status: :ok
    end

  def get_by_country

     country_code = country_code.to_i

     url = URI("https://shazam-core.p.rapidapi.com/v1/charts/country?country_code=#{params[:country_code]}")
    
     http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
     
      request = Net::HTTP::Get.new(url)
      request["X-RapidAPI-Key"] = 'a0554f65f6mshf74a9ae52ae50dep13e0acjsncf0c84aec583'
      request["X-RapidAPI-Host"] = 'shazam-core.p.rapidapi.com'
     
      response = http.request(request)

      artist =JSON.parse(response.body)
    
      render json: artist, status: :ok
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
