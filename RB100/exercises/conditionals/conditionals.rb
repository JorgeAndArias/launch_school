# # 1. In the code below, sun is randomly assigned as 'visible' or 'hidden'.

# sun = ['visible', 'hidden'].sample

# # Write an if statement that prints "The sun is so bright!" if sun equals 'visible'.

# puts "The sun is so bright!" if sun == "visible"

# # 2. Write an unless statement that prints "The clouds are blocking the sun!" unless sun equals 'visible'.

# puts "The clouds are blocking the sun!" unless sun == "visible"

# # 3. Write an if statement that prints "The sun is so bright!" if sun equals visible.
# # Also, write an unless statement that prints "The clouds are blocking the sun!" unless sun equals visible.

# # When writing these statements, take advantage of Ruby's expressiveness and use statement modifiers instead of an if...end statement
# # to print results only when some condition is met or not met.

# puts "The sun is so bright!" if sun == "visible"
# puts "The clouds are blocking the sun!" unless sun == "visible"

# # 4. In the code below, boolean is randomly assigned as true or false.

# boolean = [true, false].sample

# # Write a ternary operator that prints "I'm true!" if boolean equals true and prints "I'm false!" if boolean equals false.

# boolean ? puts("true") : puts("false")

# # 5. What will the following code print? Why? Don't run it until you've attempted to answer.

# number = 7

# if number
#   puts "My favorite number is #{number}."
# else
#   puts "I don't have a favorite number."
# end

# # => My favorite number is 7. 7 is a truthy value so the if condition is met.

# # 6. In the code below, stoplight is randomly assigned as 'green', 'yellow', or 'red'.

# stoplight = ['green', 'yellow', 'red'].sample

# # Write a case statement that prints "Go!" if stoplight equals 'green', "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.

# case stoplight
# when "green" then puts "Go!"
# when "yellow" then puts "Slow down!"
# when "red"  then puts "Stop!"
# end

# # 7. Convert the following case statement to an if statement.

# stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when 'green'
#   puts 'Go!'
# when 'yellow'
#   puts 'Slow down!'
# else
#   puts 'Stop!'
# end

# if stoplight == "green"
#   puts "Go!"
# elsif stoplight == "yellow"
#   puts "Slow down!"
# else
#   puts "Stop!"
# end

# # 8. In the code below, status is randomly assigned as 'awake' or 'tired'.

# status = ['awake', 'tired'].sample

# # Write an if statement that returns "Be productive!" if status equals 'awake' and returns "Go to sleep!" otherwise.
# # Then, assign the return value of the if statement to a variable and print that variable.

# x = status == "awake" ? "Be productive!" : "Go to sleep!"

# puts x

# # 9. In the code below, number is randomly assigned a number between 0 and 9.
# # Then, an if statement is used to print "5 is a cool number!" or "Other numbers are cool too!" based on the value of number.

# # number = rand(10)

# # if number = 5
# #   puts '5 is a cool number!'
# # else
# #   puts 'Other numbers are cool too!'
# # end

# # Currently, "5 is a cool number!" is being printed every time the program is run.
# # Fix the code so that "Other numbers are cool too!" gets a chance to be executed.

# number = rand(10)

# if number == 5
#   puts '5 is a cool number!'
# else
#   puts 'Other numbers are cool too!'
# end

# 10. Reformat the following case statement so that it only takes up 5 lines.

stoplight = ['green', 'yellow', 'red'].sample

# case stoplight
# when 'green'
#   puts 'Go!'
# when 'yellow'
#   puts 'Slow down!'
# else
#   puts 'Stop!'
# end

case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end
