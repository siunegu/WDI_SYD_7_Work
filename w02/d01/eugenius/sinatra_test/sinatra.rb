require "sinatra"
require "sinatra/reloader"


get "/posts/:id/:slug" do
	"Load blog post with ID #{params[:id]} and slug #{params[:slug]}"
end

post "/users" do
	"You signed up with the email address: " +
	"#{params[:email]}" +
	" and password: #{params[:password]}"
end

post "/blog" do
	@title = params[:title].upcase
	@content = params[:content]
	erb :blog_post, layout: :page
end

get "/" do
	"Welcome Home"
end

get "/search/:query" do
	"<h1>You are searching for #{params[:query]}</h1>"
end	

# GET /hello/jack
# "Hello jack"
get "/hello/:name" do
	"Hello #{params[:name]}"
end

get "/screencast" do
	"Screencasts"
end
