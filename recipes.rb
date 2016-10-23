require 'sinatra'
require 'json'
#require 'rest-client'
require 'httparty'
require 'byebug'

get '/' do
  "Hello World!"
end

api_key = "93d457791ace6de279a746eaf35173d7"
api_id = "39ef2e82"

#edamam_url = "https://api.edamam.com/search?q=chicken&app_id=#{api_id}&app_key=#{api_key}"
edamam_url = "https://api.edamam.com/search?q=chicken&app_id=39ef2e82&app_key=93d457791ace6de279a746eaf35173d7"

response = HTTParty.get(edamam_url)
byebug
puts recipe_data = JSON.parse(response.body) if response.code ==200
