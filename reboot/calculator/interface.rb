# interface.rb

# Pseudo-code (what are the steps in plain english):
# 1. Say hello to the user
# 2. Ask user for the first number
# 3. Get user answer
# 4. Ask user for second number
# 5. etc.

require_relative "calculator.rb"

other_operation = "y"
until other_operation == "n"

  puts "This is a calculator. Input 2 numbers"

  # Number One
  puts "insert the first number"
  number1 = gets.chomp.to_f
  p number1

  # Number Two
  puts "insert the second number"
  number2 = gets.chomp.to_f
  p number2

  puts "What kind of operation? Choose one: + - / *"
  # Assert + - / *
  operation = gets.chomp # Getting user input

  result = calculate(number1, number2, operation)

  puts "Oh, the result is #{result}"

  puts "Want to do another one? Type (n/y)"
  other_operation = gets.chomp

  # if other_operation != "n" or other_operation != "y"
  # puts "Your option is not valid"
  # end
end


# case operation
#   when "-"
#     puts "oh, substraction"
#     result = number1 - number2
#   when "+"
#     puts "oh, addition"
#     result = number1 + number2
#   when "/"
#     puts "oh, division"
#     result = number1 / nunmber2
#   when "*"
#     puts "oh, multiplication"
#     result = number1 * number2
#   else
#     puts "Theres no such operation"
# end




# if condition == "+"
# elsif condition == "-"
# elsif condition == "/""
# elsif condition == "*"
# end

