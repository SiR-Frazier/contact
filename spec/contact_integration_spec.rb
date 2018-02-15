require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the contact page', {:type => :feature}) do
  it('processes the user entry and returns their name') do
    visit('/')
    fill_in('name', :with => 'Jean Jacques')
    fill_in('address', :with => 'anything')
    fill_in('city', :with => 'Portland, OR')
    click_button('enter')
    expect(page).to have_content('Jean Jacques')
  end
end
