# Method is cleaner way of depicting the above
def calculate(number1, number2, operation)
  result = case operation
    #Simplify the case operation with when...then
    when "-" then number1 - number2
    when "+" then number1 + number2
    when "/" then number1 / number2
    when "*" then number1 * number2
    else
    puts "Theres no such operation"
  end
  return result
end

  # when "-"
    #   puts "oh, substraction"
    #   result = number1 - number2
    # when "+"
    #   puts "oh, addition"
    #   result = number1 + number2
    # when "/"
    #   puts "oh, division"
    #   result = number1 / nunmber2
    # when "*"
    #   puts "oh, multiplication"
    #   result = number1 * number2
