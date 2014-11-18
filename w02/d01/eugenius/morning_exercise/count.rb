require "sinatra"
require "sinatra/reloader"

get "/:sum/:number" do

	@sum = params[:number].to_i
		@numbers = (:sum...:number)
		@sum = 0

		@numbers.each do |n|
		  if n % 3 == 0 || n % 5 == 0
		    @sum += n
		  end
		end

		puts @sum
end