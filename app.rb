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
  @word = Item.find
end
