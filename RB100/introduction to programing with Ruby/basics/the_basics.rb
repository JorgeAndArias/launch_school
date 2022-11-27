# 1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.

"Jorge " + "Arias"

=begin
2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the:
1) thousands place 2) hundreds place 3) tens place 4) ones place
=end

num = 1234

thousands_place = num / 1000
hundreds_place = (num / 100) % 10
tens_place = (num / 10) % 10
ones_place = num % 10

puts thousands_place
puts hundreds_place
puts tens_place
puts ones_place

=begin
3. Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command
to make your program print out the year of each movie to the screen. The output for your program should look something like this.
1975
2004
2013
2001
1981
=end

movies = {
  :titanic => 2005,
  :avatar => 2010,
  :james_bond => 1960,
  :up! => 2015
}

puts movies[:titanic]
puts movies[:avatar]
puts movies[:james_bond]
puts movies[:up!]


# 4. Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.


dates = [2005, 2010, 1960, 2015]

puts dates[0]
puts dates[1]
puts dates[2]
puts dates[3]

# 5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

eight_factorial = 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1
seven_factorial = 7 * 6 * 5 * 4 * 3 * 2 * 1
six_factorial = 6 * 5 * 4 * 3 * 2 * 1
five_factorial = 5 * 4 * 3 * 2 * 1

puts eight_factorial
puts seven_factorial
puts six_factorial
puts five_factorial

# 6. Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.

puts 12.5 * 12.5
puts 23.65 * 23.65
puts 3993.333 * 3993.333
