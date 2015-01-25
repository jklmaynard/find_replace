require('sinatra')
require('sinatra/reloader')
require('./lib/findreplace')

get('/') do
  erb(:index)
end

get('/output') do
  @sentence = params.fetch('user_sentence')
  @wrong_w = params.fetch('wrong_word')
  @correct_w = params.fetch('new_word')
  @pretty_sent = @sentence.findreplace(@wrong_w, @correct_w)
  erb(:output)
end
