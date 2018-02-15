require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')

get('/') do
  @description = "___"
  erb(:input)
end

get('/output') do
  erb(:output)
end
