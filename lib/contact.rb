require('rspec')
require('pry')

class Contact
  @@people = []
  attr_accessor :name
  attr_accessor :address
  attr_accessor :city

  def initialize (name, address, city)
    @name = name
    @address = address
    @city = city
  end

  def upcase
    @name.upcase
  end

  def self.all()
    @@people
  end

  def save
    # binding.pry
    @@people.push(self)
  end

end
