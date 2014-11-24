require "sinatra"
require "sinatra/reloader"
require "httparty"
require "pry"

get "/" do
	erb :home, layout: :layout
end

get "/search" do
		movies_search = params[:q].gsub(' ', '+')
		response = HTTParty.get("http://www.omdbapi.com/?s=#{movies_search}")
		@movie_list = JSON(response)["Search"]
		erb :search, layout: :layout
end

get "/movies/:imdbid" do
		if params[:imdbid] #'If' movie imdbid exists, do the next thing
		search_term = params[:imdbid].gsub(' ', '+')
		response = HTTParty.get("http://www.omdbapi.com/?i=#{search_term}")
		@movie = JSON(response)	
		#Now to get that search state into the url for related urls...
		movie_title = @movie["Title"].gsub(' ', '+')
		response = HTTParty.get("http://www.omdbapi.com/?s=#{movie_title}")
		@movie_list = JSON(response)	
		end

	erb :movie, layout: :layout
end

# get "" do

# end	