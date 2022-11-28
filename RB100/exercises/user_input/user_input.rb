# 1. Write a program that asks the user to type something in, after which your program should simply display what was entered.

puts "Please type something..."
input = gets.chomp

puts input

# 2. Write a program that asks the user for their age in years, and then converts that age to months.

puts "What is your age? "
age_years = gets.chomp.to_i

puts "You are #{age_years * 12} months old."

# 3. Write a program that asks the user whether they want the program to print "something", then print it if the user enters y. Otherwise, print nothing.

puts "Do you want to print something? (y/n)"
input = gets.chomp.upcase

puts "Something" if input == "Y"

# 4. In the previous exercise, you wrote a program that asks the user if they want the program to print "something".
# However, this program recognized any input as valid: if you answered anything but y, it treated it as an n response, and quit without printing anything.

# Modify your program so it prints an error message for any inputs that aren't y or n, and then asks you to try again.
# Keep asking for a response until you receive a valid y or n response.
# In addition, your program should allow both Y and N (uppercase) responses; case sensitive input is generally a poor user interface choice.
# Whenever possible, accept both uppercase and lowercase inputs.

input = true

while input
  puts "Do you want to print something? (y/n)"
  input = gets.chomp.upcase
  if input == "Y"
    puts "Something"
    break
  elsif input == "N"
    break
  end
  puts "Invalid input! Please enter y/n"
end

# using loop

input = nil

loop do
  puts "Do you want to print something? (y/n)"
  input = gets.chomp.downcase
  break if %w(y n).include?(input)
  puts "Invalid input! Please enter y/n"
end

puts "something" if input == "y"

# 5. Write a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed.
# The program should obtain the number of lines from the user, and should insist that at least 3 lines are printed.

# For now, just use #to_i to convert the input value to an Integer, and check that result instead of trying to insist on a valid number;
# validation of numeric input is a topic with a fair number of edge conditions that are beyond the scope of this exercise.

lines = nil

loop do
  puts "How many output lines do you want? Enter a number >= 3: "
  lines = gets.chomp.to_i
  break if lines >= 3
  puts "Please choose a number greater or equal to 3"
end

until lines == 0
  puts "Launch School is the best!"
  lines -= 1
end

# 6. Write a program that displays a welcome message, but only after the user enters the correct password,
# where the password is a string that is defined as a constant in your program.
# Keep asking for the password until the user enters the correct password.

correct_password = "12345"

loop do
  puts "Please enter your password: "
  password = gets.chomp
  break if password == correct_password
  puts "Incorrect password! Try again"
end

puts "Welcome!"

# 7. In the previous exercise, you wrote a program to solicit a password. In this exercise, you should modify the program so it also requires a user name.
# The program should solicit both the user name and the password, then validate both, and issue a generic error message if one or both are incorrect;
# the error message should not tell the user which item is incorrect.

USERNAME = "jorge"
PASSWORD = "12345"

loop do
  puts "Please enter your username: "
  username = gets.chomp
  puts "Please enter your password: "
  password = gets.chomp
  break if password == PASSWORD && username == USERNAME
  puts "Incorrect credentials! Try again"
end

puts "Welcome!"

# 8. Write a program that asks the user to enter two integers, then prints the results of dividing the first by the second.
# The second number must not be 0. Since this is user input, there's a good chance that the user won't enter a valid integer.
# Therefore, you must validate the input to be sure it is an integer. You can use the following code to determine whether the input is an integer:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

# It returns true if the input string can be converted to an integer and back to a string without loss of information, false otherwise.
# It's not a perfect solution in that some inputs that are otherwise valid (such as 003) will fail, but it is sufficient for this exercise.

numerator = nil

loop do
  puts "Please enter the numerator: "
  numerator = gets.chomp
  break if valid_number?(numerator)
  puts "Invalid input. Only integers allowed"
end

denominator = nil

loop do
  puts "Please enter the denominator: "
  denominator = gets.chomp

  if denominator == "0"
    puts "Invalid input. A denominator of 0 is not allowed"
    next
  end
  break if valid_number?(denominator)
  puts "Invalid input. Only integers allowed"
end

puts "#{numerator} / #{denominator} is #{numerator.to_i / denominator.to_i}"

# 9. In an earlier exercise, you wrote a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed.
# Our solution looked like this:

# number_of_lines = nil
# loop do
#   puts '>> How many output lines do you want? Enter a number >= 3:'
#   number_of_lines = gets.to_i
#   break if number_of_lines >= 3
#   puts ">> That's not enough lines."
# end

# while number_of_lines > 0
#   puts 'Launch School is the best!'
#   number_of_lines -= 1
# end

# Modify this program so it repeats itself after each input/print iteration, asking for a new number each time through.
# The program should keep running until the user enters q or Q.

number_of_lines = nil

loop do
  loop do
    puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
    number_of_lines = gets.chomp
    if number_of_lines.downcase == "q" || number_of_lines.downcase == "quit"
      number_of_lines = nil
      break
    end
      break if number_of_lines.to_i >= 3
    puts ">> That's not enough lines."
  end

  break if number_of_lines == nil

  while number_of_lines.to_i > 0
    puts 'Launch School is the best!'
    number_of_lines = number_of_lines.to_i  - 1
  end
end

# 10. Write a program that requests two integers from the user, adds them together, and then displays the result.
# Furthermore, insist that one of the integers be positive, and one negative;
# however, the order in which the two integers are entered does not matter.

# Do not check for the positive/negative requirement until both integers are entered, and start over if the requirement is not met.

# You may use the following method to validate input integers:

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

num1 = nil
num2 = nil

loop do
  puts "Please enter a positive or negative integer:"
  num1 = gets.chomp
  puts "Please enter a positive or negative integer:"
  num2 = gets.chomp

  unless valid_number?(num1) && valid_number?(num2)
    puts "Invalid input. Only non-zero integers are allowed."
    next
  end

  if (num1.to_i > 0 && num2.to_i > 0) || (num1.to_i < 0 && num2.to_i < 0)
    puts "Sorry. One integer must be positive, one must be negative."
  else
    puts "#{num1} + #{num2} = #{num1.to_i + num2.to_i}"
    break
  end
end
