require "sinatra"
require "sinatra/reloader"

get '/calc' do

  @number_1 = params[:number_1].to_f
  @number_2 = params[:number_2].to_f
  @operator = params[:operator]

  @answer = case @operator
                when "Add" then @answer = @number_1 + @number_2
                when "Subtract" then @answer = @number_1 - @number_2
                when "Multiply" then @answer = @number_1 * @number_2
                when "Divide" then @answer = @number_1 / @number_2
            end
          puts @answer

  erb :form, layout: :page_layout
end