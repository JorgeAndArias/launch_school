=begin
1. Given a hash of family members, with keys as the title and an array of names as the values,
use Ruby's built-in select method to gather only siblings' names into a new array.
=end

# family = {  uncles: ["bob", "joe", "steve"],
#             sisters: ["jane", "jill", "beth"],
#             brothers: ["frank","rob","david"],
#             aunts: ["mary","sally","susan"]
# }

# siblings = []

# family.select do |k, v|
#   if k == :sisters || k == :brothers
#     v.each { |name| siblings.push(name)}
#   end
# end

# p siblings

# # better solution

# siblings = family.select { |k, v| k == :sisters || k == :brothers }

# siblings_names = siblings.values.flatten

# p siblings_names

=begin
2. Look at Ruby's merge method. Notice that it has two versions.
What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.
=end

hash_1 = { a: 1, b: 2, c: 300 }
hash_2 = { c: 3, d: 4, e: 5, f: 6 }

hash_1.merge(hash_2)
# => { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6 }
# The merge method is not disruptive. In this case it will return a new hash that combines both hashes, leaving the initial hash with the original values
# when both hashes share the same key, the value of the hash to be merged will be kept, in this case c: 3
puts hash_1
# => { a: 1, b: 2, c: 300 }

p hash_1.merge!(hash_2)
# => { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6 }
# The merge! method is disruptive. In this case it will mutate the original hash with the combination of both hashes,
# when both hashes share the same key, the value of the hash to be merged will be kept, in this case c: 3
puts hash_1
# => { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6 }

=begin
3. Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys.
Then write a program that does the same thing except printing the values.
Finally, write a program that prints both.
=end

hash = { a: 1, b: 2, c: 3, d: 4, e: 5, f: 6 }

hash.each_key { |k| puts k}
hash.each_value { |v| puts v}
hash.each { |k,v| puts "#{k}, #{v}"}

# 4. Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person[:name]

#  5. What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.

if hash.value?(1)
  puts "yes"
else
  puts "no"
end

# 6. Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

=begin
What's the difference between the two hashes that were created?
The key for the value "some value" in my_hash is a symbol
The key for the value "some value" in my_hash2 is a string

7. If you see this error, what do you suspect is the most likely problem?

  NoMethodError: undefined method `keys' for Array

A. We're missing keys in an array variable.

B. There is no method called keys for Array objects.

C. keys is an Array object, but it hasn't been defined yet.

D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.

=> B

=end

