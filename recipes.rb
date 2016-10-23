require 'sinatra'
require 'bundler'
Bundler.setup
require 'json'
require 'rest-client'

get '/' do
  "Hello World!"
end

api_url
