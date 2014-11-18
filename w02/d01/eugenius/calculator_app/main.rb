require "sinatra"
require "sinatra/reloader"

get "/calculate" do 
	@number_1 = params[:number_1].to_f
	@number_2 = params[:number_2].to_f
	@operator = params[:operator]

	@answer = case @operator 
						when "Add" 
							@number_1 + @number_2 
						when "Subtract"
							@number_1 - @number_2
						when "Multiply"
							@number_1 * @number_2
						when "Divide"
							@number_1 / @number_2 	
						end
	@answer																			
	erb :form, layout: :page_layout
end