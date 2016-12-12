require ('sinatra')
require ('sinatra/contrib/all')
require ('pry')
require ('json')
require_relative('./models/rock_paper_scissors')

get '/' do
  erb(:home)
end

get '/about' do
  erb(:about)
end

get '/who_wins/:option1/:option2' do
  rps = Rps.new(params[:option1].to_s , params[:option2].to_s)
  @result = rps.who_wins()
  erb(:results)
end

get '/who_wins/:option1/:option2' do
  rps = Rps.new(paper , scissors)
  @result = rps.who_wins()
  erb(:results)
end

get '/who_wins/:option1/:option2' do
  rps = Rps.new(rock , scissors)
  @result = rps.who_wins()
  erb(:results)
end