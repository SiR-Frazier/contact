require('contact')
require('pry')
require('rspec')

describe(Contact) do

  describe("#upcase") do
    it("upcase contact name") do
      instance = Contact.new({:name=> "Henry", :address=> "knott", :city=> "Portland, OR"})
      expect(instance.upcase()).to(eq("KNOTT"))
    end
  end

  describe("#save") do
    it ("saves contact to list of contacts") do
      one = Contact.new({:name=> "Sophia", :address=> "33 Fremont", :city=> "Portland, OR"})
      two = Contact.new({:name=> "Mr. Jonz", :address=> "11 Burnside", :city=> "Portland, OR"})
      Contact.clear()
      one.save()
      two.save()
      expect(Contact.all()).to(eq([one, two]))
    end
  end

  describe(".clear") do
    it("clears all items from the list") do
      instance = Contact.new({:name=> "Channing", :address=> "21 Jumpstreet", :city=> "PDX"})
      instance.save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("finds a contact based on the name") do
      instance = Contact.new({:name=> "Freddy", :address=> "123 Elm Street", :city=> "PDX"})
      instance.save()
      expect(Contact.find("Freddy")).to(eq(instance))
    end
  end
end # Contacts

describe(Address) do

  describe("#downcase") do
    it("downcase address") do
    instance = Address.new({:address=> "123 NE Skidmore Street", :city=> "PDX"})
    expect(instance.downcase()).to(eq("123 ne skidmore street"))
    end
  end

  describe("#upcase") do
    it("downcase address") do
    instance = Address.new({:address=> "miami", :city=> "LA"})
    expect(instance.upcase()).to(eq("MIAMI"))
    end
  end

end
