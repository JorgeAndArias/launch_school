# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.each { |num| puts num }

# 2. Same as above, but only print out values greater than 5.

numbers.each { |num| puts num if num > 5 }

# 3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

odd_numbers = numbers.select {|num| num % 2 != 0}

puts odd_numbers

# 4. Append 11 to the end of the original array. Prepend 0 to the beginning.

numbers.push(11)
numbers.unshift(0)

p numbers

# 5. Get rid of 11. And append a 3.

numbers.delete(11)
numbers.push(3)

p numbers

# 6. Get rid of duplicates without specifically removing any one value.

numbers.uniq!

p numbers

# 7. What's the major difference between an Array and a Hash?
# => array is an ordered list of elements and hash is an unordered list of elements (changed in recent Ruby versions)
# Also, hashes linked elements to key, better known as key-value pair

# 8. Create a Hash, with one key-value pair, using both Ruby syntax styles.

hash1 = {
  :old_key => "hello old key"
}

hash2 = {
  new_key: "hello new key"
}

# 9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}
h = {a:1, b:2, c:3, d:4}

# 1. Get the value of key `:b`.
puts h[:b]
# 2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5

p h
# 3. Remove all key:value pairs whose value is less than 3.5
h.delete_if { |k, v| v < 3.5 }

p h

# 10. Can hash values be arrays? Can you have an array of hashes? (give examples)

# Can hash values be arrays?
# Yes, they can be. For example:
h1 = {a:[1, 2, 3, 4], b:2, c:3, d:4}

# Can you have an array of hashes?
# Yes, definetely. We could for example push two hashes to an empty array
empty_array = []
h1 = {a:1, b:2, c:3, d:4}
h2 = {e:5, f:6, g:7, h:8}

empty_array.push(h1)
empty_array.push(h2)

p empty_array
# => [{:a=>1, :b=>2, :c=>3, :d=>4}, {:e=>5, :f=>6, :g=>7, :h=>8}]

# 11. Given the following data structures, write a program that copies the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
p contacts

# 12. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number.

p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone]

# 13. Use Ruby's Array method delete_if and String method start_with? to delete all of the strings that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |string| string.start_with?("s")}

p arr

# Then recreate the arr and get rid of all of the strings that start with "s" or start with "w".

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |string| string.start_with?("s", "w") }

p arr

# 14. Take the following array:
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# and turn it into a new array that consists of strings containing one word.
# (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

a.map! do |sentence|
  sentence.split(" ")
end

p a.flatten

# 15. What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# => "These hashes are the same!"

=begin
16. Challenge: In exercise 11, we manually set the contacts hash values one by one.
Now, programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array.
Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:
=end
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    contacts[name][field] = contact_data.shift
  end
end

p contacts

# As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"], ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

p contacts
