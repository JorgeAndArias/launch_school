# 1. Write a method named print_me that prints I'm printing within the method! when invoked as follows:

def print_me
  puts "I'm printing within the method!"
end

print_me

# 2. Write a method named print_me so that I'm printing the return value! is printed when running the following code:

def print_me
  "I'm printing within the method!"
end

puts print_me

# 3. Write two methods, one that returns the string "Hello" and one that returns the string "World".
# Then print both strings using #puts, combining them into one sentence.

def print_hello
  "Hello"
end

def print_world
  "World"
end

puts print_hello + " " + print_world

# 4. Write a method named greet that invokes the following methods:

def hello
  'Hello'
end

def world
  'World'
end

# When greet is invoked with #puts, it should output the following:
# Hello World
# Make sure you add a space between "Hello" and "World", however, you're not allowed to modify hello or world.

def greet
  hello + " " + world
end

puts greet

# 5. Using the following code, write a method called car that takes two arguments and prints a string containing the values of both arguments.

def car(make, model)
  puts make + " " + model
end

car('Toyota', 'Corolla')

# 6. The variable below will be randomly assigned as true or false. Write a method named time_of_day that, given a boolean as an argument,
# prints "It's daytime!" if the boolean is true and "It's nighttime!" if it's false.
# Pass daylight into the method as the argument to determine whether it's day or night.

daylight = [true, false].sample

def time_of_day(boolean)
  if boolean
    puts "It's nighttime"
  else
    puts "It's daytime!"
  end
end

time_of_day(daylight)

# 7. Run the code as it is shown below, and take notice of any error messages.

# def dog
#   return name
# end

# def cat(name)
#   return name
# end

# puts "The dog's name is #{dog('Spot')}."
# puts "The cat's name is #{cat}."

# Based on what the error messages are telling you, update the relevant method definitions and method invocations as necessary so
# that the names are printed as shown below.

# Expected output:
# The dog's name is Spot.
# The cat's name is Ginger.

def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

# 8. Write a method that accepts one argument, but doesn't require it.
# The parameter should default to the string "Bob" if no argument is given. The method's return value should be the value of the argument.

def assign_name(name = "Bob")
  name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

# 9. Write the following methods so that each output is true.

def add(num1, num2)
  num1 + num2
end

def multiply(num1, num2)
  num1 * num2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

# 10. The variables below are both assigned to arrays.
# The first one, names, contains a list of names.
# The second one, activities, contains a list of activities.
# Write the methods name and activity so that they each take the appropriate array and return a random value from it.
# Then write the method sentence that combines both values into a sentence and returns it from the method.

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(name, activity)
  "#{name} went #{activity} today"
end

puts sentence(name(names), activity(activities))
