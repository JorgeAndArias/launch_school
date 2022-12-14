# 1. Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

# For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

(1..10).to_a.each {|num| puts "The Flintstones Rock!".rjust("The Flintstones Rock!".length + num)}

# easier way
10.times { |num| puts (" " * num) + "The Flintstones Rock!"}

# 2. The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?
# => It is a problem because there is not conversion of the result (40 + 2), which is an Integer, into String

# => convert the Integer into String
puts "the value of 40 + 2 is " + (40 + 2).to_s
# => Use string interpolation
puts "the value of 40 + 2 is #{40 + 2}"

