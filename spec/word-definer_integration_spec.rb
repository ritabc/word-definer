require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('from the /word/:word page', {:type => :feature}) do
  it('user can click Return to Word List button') do
    visit('/word/:word')
    click_button('Return to Word List')
    expect(page).to have_content('Room 1')
  end
end
