require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word_definer')
require('pry')

get('/') do
  Word.clear
  @list = Word.get_word_list
  erb(:input)
end

post('/') do
  new_word = Word.new(:word => params.fetch("add_word"))
  @list = Word.get_word_list
  erb(:input)
end

get('/word/:word') do
  @current_word = Word.find(params.fetch(:word))
  erb(:word)
end

post('/word/:word') do
  ## when we submit a definition, we want to stay on the page.
  ### Do we need a @@current_word?
  @current_word = Word.find(params.fetch("add_definition_btn"))
  new_definition = params.fetch("add_definition")
  @current_word.add_definition(new_definition)
  erb(:word)
end
