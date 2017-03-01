# Challenge 1 - Calculator
# Create a simple calculator that first asks the user what method they would like to use (addition, subtraction, multiplication, division) and then asks the user for two numbers, returning the result of the method with the two numbers. Here is a sample prompt:

# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9
# ```
def calculate
  p "What method would you like to use (add,subtract,multiply,divide)?"
  method = gets.chomp

  p "Provide the first number"
  first_num = gets.chomp.to_f

  p "Provide the second number"
  second_num = gets.chomp.to_f

  if method == 'add'
    p "Your answer is #{first_num + second_num}"

  elsif method == "subtract"
    p "Your answer is #{first_num - second_num}"

  elsif method == "multiply"
    p "Your answer is #{first_num * second_num}"

  elsif method == "divide"
    p "Your answer is #{first_num / second_num}"
  end
end

calculate
