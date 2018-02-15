require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')

get('/') do
  @contacts = Contact.all()
  erb(:home)
end

post('/') do
  name = params["name"]
  address = params["address"]
  city = params["city"]
  contact = Contact.new(params)
  contact.save()
  @contacts = Contact.all()
  erb(:home)
end
