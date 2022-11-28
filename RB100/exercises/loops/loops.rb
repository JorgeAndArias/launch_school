# 1. The code below is an example of an infinite loop. The name describes exactly what it does: loop infinitely. This loop isn't useful in a real program, though.
# Modify the code so the loop stops after the first iteration.

loop do
  puts 'Just keep printing...'
  break
end

# 2. The code below is an example of a nested loop. Both loops currently loop infinitely.
# Modify the code so each loop stops after the first iteration.

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

# 3. Modify the following loop so it iterates 5 times instead of just once.

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations >= 5
  iterations += 1
end

# 4. Modify the code below so the loop stops iterating when the user inputs 'yes'.
loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == "yes"
end

# 5. Modify the code below so "Hello!" is printed 5 times.

say_hello = true
counter = 1

while say_hello
  puts 'Hello!'
  counter += 1
  say_hello = false if counter == 5
end

# 6. Using a while loop, print 5 random numbers between 0 and 99 (inclusive).
# The code below shows an example of how to begin solving this exercise.


numbers = Array(0..99)
counter = 0

while counter < 5
  puts numbers.sample
  counter += 1
end

# 7. The following code outputs a countdown from 10 to 1. Modify the code so that it counts from 1 to 10 instead.

count = 1

until count > 10
  puts count
  count += 1
end

# 8. Given the array of several numbers below, use an until loop to print each number.

# First way. Probably not the best since it mutates the numbers array
numbers = [7, 9, 13, 25, 18]

until numbers.length == 0
  puts numbers.shift
end

# Second way
count = 0

until count == numbers.length
  puts numbers[count]
  count += 1
end

# 9.The code below shows an example of a for loop. Modify the code so that it only outputs i if i is an odd number.

for i in 1..100
  puts i if i % 2 != 0
end

# remember to use the .odd? method!!

# 10. Your friends just showed up! Given the following array of names, use a for loop to greet each friend individually.

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}!"
end

# 11. Write a loop that prints numbers 1-5 and whether the number is even or odd. Use the code below to get started.

count = 1

loop do
  if count % 2 == 0
    puts "is even!"
  else
    puts "is odd!"
  end
  break if count == 5
  count += 1
end

12. Modify the following code so that the loop stops if number is equal to or between 0 and 10.

loop do
  number = rand(100)
  if number >= 0 && number <= 10
    puts "#{number} is equal to or between 0 and 10"
    break
  else
    puts number
  end
end

# 13. Write an if/else statement that executes some code if the process_the_loop variable is true and some other code when process_the_loop is false. Specifically:

# When process_the_loop is true, execute a loop that iterates exactly once and prints The loop was processed during that iteration.
# When process_the_loop is false, just print The loop wasn't processed!.
# Use the following code to initialize process_the_loop. It will randomly assign the variable to either true or false.

process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed"
    break
  end
else
  puts "The loop wasn't processed"
end

# 14. The code below asks the user "What does 2 + 2 equal?" and uses #gets to retrieve the user's answer.
# Modify the code so "That's correct!" is printed and the loop stops when the user's answer equals 4.
# Print "Wrong answer. Try again!" if the user's answer doesn't equal 4.

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer. Try again!"
  end
end

# 15. Modify the code below so that the user's input gets added to the numbers array. Stop the loop when the array contains 5 numbers.

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.length == 5
end
puts numbers

# 16. Given the array below, use loop to remove and print each name from first to last. Stop the loop once names doesn't contain any more elements.
# Keep in mind to only use loop, not while, until, etc.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.length == 0
end

# Can you change this to print the names from last to first?

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  break if names.length == 0
end

# 17. The method below counts from 0 to 4. Modify the block so that it prints the current number and stops iterating when the current number equals 2.

5.times do |index|
  puts index
  break if index == 2
end

# 18. Using next, modify the code below so that it only prints positive integers that are even.

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

# 19. The following code increments number_a and number_b by either 0 or 1.
# loop is used so that the variables can be incremented more than once, however, break stops the loop after the first iteration.
# Use next to modify the code so that the loop iterates until either number_a or number_b equals 5. Print "5 was reached!" before breaking out of the loop.

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next if number_a != 5 || number_b != 5

  puts "5 was reached"
  break
end

# Is using next the best option for this example? Could you use an if/else statement instead?

loop do
  number_a += rand(2)
  number_b += rand(2)
  if number_a == 5 || number_b == 5
    puts "5 was reached"
    break
  end
end

# 20. Given the code below, use a while loop to print "Hello!" twice.

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings != 0
  greeting
  number_of_greetings -= 1
end
