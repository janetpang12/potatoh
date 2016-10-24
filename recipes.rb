require 'sinatra'
require 'json'
#require 'rest-client'
require 'httparty'
require 'byebug'

get '/' do
  "Hello World!"
end

api_key = ENV["EDAMAM_API_KEY"]
api_id =  ENV["EDAMAM_API_ID"]

edamam_url = "http://api.edamam.com/search?q=potato&app_id=#{api_id}&app_key=#{api_key}"

response = HTTParty.get(edamam_url)
puts recipe_data = JSON.parse(response.body) if response.code ==200
