=begin
1. Write a program that prints a greeting message.
This program should contain a method called greeting that takes a name as its parameter and returns a string.
=end

def greeting(name)
  "Hello #{name}!"
end

p greeting("Jorge")

=begin
2. What do the following expressions evaluate to? That is, what value does each expression return?
1. x = 2
=> 2
2. puts x = 2
=> nil
3. p name = "Joe"
=> "Joe" # method p outputs its argument and then return it
4. four = "four"
=> "four"
5. print something = "nothing"
=> nil
=end

# 3. Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.

def multiply(a, b)
  a * b
end

puts multiply(10, 294)

=begin
4. What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# It will print nothing
=>
=end

# 5. 1) Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

# returns nil

=begin
What does the following error message tell you?
ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

It tells me that when calling the method calculate_product the method is expecting two arguments, but the user has provided only one
=end
