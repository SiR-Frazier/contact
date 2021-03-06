require('rspec')
require('pry')

class Contact
  @@people = []
  attr_accessor :name
  attr_accessor :address
  attr_accessor :city

  def initialize (attributes)
    @name = attributes.fetch(:name)
    @address = attributes.fetch(:address)
    @city = attributes.fetch(:city)
  end

  def upcase
    @address.upcase
  end

  def self.all()
    @@people
  end

  def save
    @@people.push(self)
  end

  def self.clear
    @@people = []
  end

  def self.find(x)
    @@people.each do |item|
      if item.name == x
        return item
      end
    end
  end
end

class Address < Contact
  attr_accessor :address, :city

  def initialize(attributes)
    @address = attributes.fetch(:address)
    @city = attributes.fetch(:city)
  end

  def downcase
    @address.downcase
    # @city.downcase
  end

end
