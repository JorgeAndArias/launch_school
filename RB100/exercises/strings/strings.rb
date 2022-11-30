# 1. Create an empty string using the String class and assign it to a variable.

string = String.new

# 2. Modify the following code so that double-quotes are used instead of single-quotes.

puts 'It\'s now 12 o\'clock.'

puts "It's now 12 o'clock."

puts %q(It's now 12 o'clock.)

puts %Q(It's now 12 o'clock.)

# 3. Using the following code, compare the value of name with the string 'RoGeR' while ignoring the case of both strings.
# Print true if the values are the same; print false if they aren't.
# Then, perform the same case-insensitive comparison, except compare the value of name with the string 'DAVE' instead of 'RoGeR'.

name = 'Roger'

puts name.casecmp?("RoGeR")
# => true
puts name.casecmp?("DAVE")
# => false

# 4. Modify the following code so that the value of name is printed within "Hello, !".

name = 'Elizabeth'

puts "Hello, !"

puts "Hello, #{name}!"

# 5. Using the following code, combine the two names together to form a full name and assign that value to a variable named full_name.
# Then, print the value of full_name.

first_name = 'John'
last_name = 'Doe'

full_name =  "#{first_name} #{last_name}"
puts full_name

full_name =  first_name + " " + last_name
puts full_name

full_name = "".concat(first_name, " ", last_name)
puts full_name

# 6. Using the following code, capitalize the value of state then print the modified value.
# Note that state should have the modified value both before and after you print it.

state = 'tExAs'

puts state.capitalize!
puts state

# 7. Given the following code, invoke a destructive method on greeting so that Goodbye! is printed instead of Hello!.

greeting = 'Hello!'

puts greeting.replace("Goodbye!")

# 8. Using the following code, split the value of alphabet by individual characters and print each character.

alphabet = 'abcdefghijklmnopqrstuvwxyz'

alphabet.each_char { |c| puts c }

# 9. Given the following code, use Array#each to print the plural of each word in words.

words = 'car human elephant airplane'

words.split(" ").each { |word| puts word + "s" }

# 10. Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't.
# Then, print true if colors includes the color 'purple' and print false if it doesn't.

colors = 'blue pink yellow orange'

puts colors.include?("yellow")
puts colors.include?("purple")
