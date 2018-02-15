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

end # Contacts
