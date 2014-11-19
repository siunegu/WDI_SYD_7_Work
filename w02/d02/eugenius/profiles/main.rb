require "sinatra"
require "sinatra/reloader"

get '/' do
	erb :home, layout: :layout
end

get '/contact' do
	@email = params[:email]
	@your_name = params[:your_name]
	@description = params[:description]
	
	erb :contact, layout: :layout
end

get '/thank_you' do
	erb :thank_you, layout: :layout
end

get '/about' do
	erb :about, layout: :layout
end

get '/:student_name' do	
	@student_data = {
		"ben" => { "student_name" => "Ben", "skills" => "Ruby" },
		"vito" => { "student_name" => "Bito", "skills" => "Ruby" },	
		"chirs" => { "student_name" => "Chris", "skills" => "Ruby" },			
		"alan" => { "student_name" => "Alan", "skills" => "Ruby" },			
		"lenny" => { "student_name" => "Lenny", "skills" => "Ruby" },			
		"joel" => { "student_name" => "Joel", "skills" => "Ruby" },			
		"freddy" => { "student_name" => "Freddy", "skills" => "Ruby" },			
		"mike" => { "student_name" => "Mike", "skills" => "Ruby" },			
		"phil" => { "student_name" => "Phil", "skills" => "Ruby" },
		"jonathan" => { "student_name" => "Jonathan", "skills" => "Ruby" },									
		"eugene" => { "student_name" => "Eugene", "skills" => "Ruby" }
	}
	@student_name = params[:student_name]
	@current_student = @student_data[@student_name]
	erb :student, layout: :layout
end


