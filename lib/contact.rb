class Contact
  def initialize (name, address, city)
    @name = name
    @address = address
    @city = city
  end

  def upcase
    @name.upcase
  end
end
