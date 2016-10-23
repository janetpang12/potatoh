require 'sinatra'
require 'json'
#require 'rest-client'
require 'httparty'
require 'byebug'

get '/' do
  "Hello World!"
end

api_key = edamam_api["api_key"]
api_id =  edamam_api["api_id"]

edamam_url = "https://api.edamam.com/search?q=chicken&app_id=#{api_id}&app_key=#{api_key}"

response = HTTParty.get(edamam_url)
byebug
puts recipe_data = JSON.parse(response.body) if response.code ==200
