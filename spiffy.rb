require 'sinatra'
require 'json'

animals    = ['aardvark', 'anteater', 'cobra', 'lion', 'goat', 'yak', 'hammerhead', 'osprey', 'raptor']
adjectives = ['snappy', 'lewd', 'abhorrant' 'abrasive', 'obnoxious', 'malevolent', 'ostentatious', 'tenuos', 'tedious', 'insiduous']

get '/' do
  erb :generator
end

get '/response' do
  content_type  :json 
  r = Random.new
  word = "#{adjectives[r.rand(0...adjectives.length)]} #{animals[r.rand(0...animals.length)]}"
  { word: word }.to_json
end

post '/' do
  erb :generator
end