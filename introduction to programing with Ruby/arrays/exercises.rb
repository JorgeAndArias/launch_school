# 1. Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
  puts "#{number} is in #{arr}"
end

# 2. What will the following programs return? What is the value of arr after each?

arr = ["b", "a"]
arr = arr.product(Array(1..3))
# => [["b",1], ["b", 2], ["b", 3], ["a", 1] ["a", 2], ["a", 3]]
arr.first.delete(arr.first.last)
# => 1
# arr = [["b"], ["b", 2], ["b", 3], ["a", 1] ["a", 2], ["a", 3]]

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
# => [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
arr.first.delete(arr.first.last)
# => [1, 2, 3]
# arr = [["b"], ["a", [1, 2, 3]]]

# 3. How do you return the word "example" from the following array?

arr = [["test", "hello", "world"],["example", "mem"]]

puts arr[1][0]

# 4. What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

puts arr.index(5)
# => 3
puts arr.index[5]
# error
puts arr[5]
# => 8

# What is the value of a, b, and c in the following program?

string = "Welcome to America!"
a = string[6]
# a = "e"
b = string[11]
# b = "A"
c = string[19]
# c = nil

=begin
6. You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody'

...and get the following error message:

TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

What is the problem and how can it be fixed?

The error is telling us that we cannot access an array element using its value as the key, the way to fix it is to use the index of the element
=end

names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'

# 7. Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

names.each_with_index { |v, i| puts "#{i}, #{v}"}

=begin
Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2.
You should have two arrays at the end of this program, The original array and the new array you've created.
Print both arrays to the screen using the p method instead of puts.
=end

initial_arr = [1, 2, 3, 4, 5]

new_arr = initial_arr.select { |num| num + 2 }

p initial_arr
p new_arr
