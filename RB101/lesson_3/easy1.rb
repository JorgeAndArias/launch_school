# 1. What would you expect the code below to print out?
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# => the uniq method does not mutate the caller
# 1
# 2
# 2
# 4

# 2. Describe the difference between ! and ? in Ruby.
# => ! could have different meanings:
# If at the end of a method name it means that it mutates the caller or the argument (convention)
# if in an expression it will change the value of the boolean to the oposite result of the expression (syntax)
# ? is the ternary operator (syntax)
# at the end of a methof name will let the user know that the return value is a boolean (convention)
# And explain what would happen in the following scenarios:
# what is != and where should you use it?
# => != is the way to express that an object is not equal to another object. It is used in expressions
# put ! before something, like !user_name
# => it's used to change any object into the opposite of their boolean value
# put ! after something, like words.uniq!
# => It is a style convention to let the user know that the method .uniq! will mutate its caller in this case the object words
# put ? before something
# => it is the ternary operator
# put ? after something
# => it's style convention to let the user know that the method will return a boolean value
# put !! before something, like !!user_name
# => it is used to turn an object into their boolean equivalent

# 3. Replace the word "important" with "urgent" in this string:
advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!('important', 'urgent')

p advice

# 4. The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:
numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?
numbers.delete_at(1)
# => the method delete_at() takes as an argument the index of the value to be deleted. In this case 2 will be deleted and retuned
numbers.delete(1)
# => the method delete() takes as an argument the value to be deleted and all the values in the array that matches the argument will be deleted.
# in this case 1 at the position 0 will be deleted and returned

# 5. Programmatically determine if 42 lies between 10 and 100.
# hint: Use Ruby's range object in your solution.

puts (10..100).include?(42)

# 6. Starting with the string:
famous_words = "seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.

famous_words = "Four score and " + famous_words
p famous_words

famous_words = "seven years ago..."
famous_words = "Four score and " << famous_words
p famous_words

famous_words = "seven years ago..."
famous_words.insert(0, "Four score and ")
p famous_words

famous_words = "seven years ago..."
famous_words.prepend("Four score and ")
p famous_words

# 7. If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array:
# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

flintstones.flatten!
p flintstones

# 8. Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and Barney's number

p flintstones.assoc("Barney")
