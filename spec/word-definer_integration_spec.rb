require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('from the / page', {:type => :feature}) do
  it('user can Add a word') do
    visit('/')
    fill_in 'add_word', with: 'tree'
    click_button('Add Word')
    expect(page).to have_content('tree')
    Word.clear
  end
end
describe('from the /word/:word page', {:type => :feature}) do
  it('user can return to the list from the definitions page') do
    visit('/')
    fill_in 'add_word', with: 'tree'
    click_button('Add Word')
    click_link('tree')
    click_button("Return to Word List")
    expect(page).to have_content('Add')
    Word.clear
  end
end
