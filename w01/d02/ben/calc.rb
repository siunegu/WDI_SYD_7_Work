require 'rainbow'

# puts Rainbow("this is red").red
 
# # A user should be given a menu of operations
# # A user should be able to choose from the menu
def menu
    puts Rainbow("calc").red
    puts Rainbow("(b)asic, (a)dvanced, (q)uit").green
    function_type = gets.chomp.downcase          
end
 
 
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  puts "(a)dd, (s)ubtract, (m)ultiply, (d)ivide"
  arithmetic_type = gets.chomp.downcase

    case arithmetic_type
  
      when 'a' 
        puts "whats your first number?"
        response_1 = gets.strip.to_f 
        puts "whats your second number?"
        response_2 = gets.strip.to_f
        result = response_1 + response_2
        puts "#{response_1}+#{response_2} = #{result}"

    when 's' 
        puts "whats your first number?"
        response_1 = gets.strip.to_f 
        puts "whats your second number?"
        response_2 = gets.strip.to_f
        result = response_1 - response_2
        puts "#{response_1}-#{response_2} = #{result}"
    when 'm' 
        puts "whats your first number?"
        response_1 = gets.strip.to_f 
        puts "whats your second number?"
        response_2 = gets.strip.to_f
        result = response_1 * response_2
        puts "#{response_1}*#{response_2} = #{result}"
    when 'd' 
        puts "whats your first number?"
        response_1 = gets.strip.to_f 
        puts "whats your second number?"
        response_2 = gets.strip.to_f
        result = response_1 / response_2
        puts "#{response_1}/#{response_2} = #{result}"

end
end



 
def advanced_calc
    puts "(p)ower, (s)qrt: "
    arithmetic_type = gets.chomp.downcase
    case 
        when 'p' 
        puts "whats your first number?"
        response_1 = gets.strip.to_f 
        puts "whats your second number?"
        response_2 = gets.strip.to_f
        result = response_1 ** response_2
        puts "#{response_1} ** #{response_2} = #{result}"
    when 'sq' 
        puts "What number would you like to squarely root?"
        response_1 = gets.strip.to_f 
        result = Math.sqrt(response_1)
        puts result
    end
end
 
 
response = menu
 
# # This process should continue until the user selects a quit option from the menu
while response != 'q'
    if response == 'b'
        basic_calc
    elsif response == 'a'
        advanced_calc
    end
    response = menu
end

























# # require 'rainbow'

# # puts Rainbow("this is red").red
 
# # # A user should be given a menu of operations
# # # A user should be able to choose from the menu
# # def menu
  
# # # end
 
 
# # A user should be able to enter numbers to perform the operation on
# # A user should be shown the result
# def basic_calc
#   puts "(a)dd, (s)ubtract, (m)ultiply, (d)ivide:"
#   arithmetic_type = gets.chomp.downcase

#         puts "whats your first number?"
#         response_1 = gets.strip.to_f 
#         puts "whats your second number?"
#         response_2 = gets.strip.to_f

#     case arithmetic_type
  
#     when 'a'
#     operator :+
#     when 's'
#     operator :-
#     when 'm'
#     operator = "*"
#     when 'd'
#     operator = "/"
# end
#     result = response_1 operator response_2
#     puts "#{response_1} #{operator} #{response_2} = #{result}"

# end
# basic_calc
 
# # # def advanced_calc
# # #   print "(p)ower, (s)qrt: "
 
# # # end
 
 
# # # response = menu
 
# # # # This process should continue until the user selects a quit option from the menu
# # # while response != 'q'
 
# # #   response = menu
# # # end

