require('contact')
require('pry')
require('rspec')

describe(Contact) do

  describe("#upcase") do
    it("upcase contact name") do
      instance = Contact.new({:name=> "Henry", :address=> "123 NE Knott", :city=> "Portland, OR"})
      expect(instance.upcase()).to(eq("HENRY"))
    end
  end

  describe("#save") do
    it ("saves contact to list of contacts") do
      one = Contact.new({:name=> "Sophia", :address=> "33 Fremont", :city=> "Portland, OR"})
      two = Contact.new({:name=> "Mr. Jonz", :address=> "11 Burnside", :city=> "Portland, OR"})
      one.save()
      two.save()
      expect(Contact.all()).to(eq([one, two]))
    end
  end

end # Contacts
