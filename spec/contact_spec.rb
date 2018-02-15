require('contact')
require('pry')
require('rspec')

describe(Contact) do

  describe("#upcase") do
    it("upcase contact name") do
      instance = Contact.new("Henry", "123 NE Knott", "Portland, OR")
      expect(instance.upcase()).to(eq("HENRY"))
    end
  end

  describe("#save") do
    it ("saves contact to list of contacts") do
      one = Contact.new("Sophia", "33 Fremont", "PDX")
      two = Contact.new("Mr. Jonz", "11 Burnside", "PDX")
      one.save()
      two.save()
      expect(Contact.all()).to(eq([one, two]))
    end
  end

end # Contacts
