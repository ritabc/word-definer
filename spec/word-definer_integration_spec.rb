require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('from the /word/:word page', {:type => :feature}) do
  it('user can click Return to Word List button') do
    visit('/')
    fill_in 'add_word', with: 'tree'
    click_button('Add Word')
    expect(page).to have_content('tree')
    Word.clear
  end
end
