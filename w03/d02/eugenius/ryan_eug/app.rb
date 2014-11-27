require "sinatra"
require "sinatra/reloader"
require "pry"

get '/' do
	@message = "hello"
	erb :show_name 
end	

# get '/name/:name_id' do
# 	@name_instance = params[:name_id]
# 	erb :display_name 
# end