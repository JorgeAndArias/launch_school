# 1. What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# The return value will be a new array containing all the elements of the original array [1, 2, 3],
# since the return value of the block is 'hi' and the string 'hi' is a truthy value

# 2. How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# We can find out how the method Enumarable#count works checking the Ruby docs https://ruby-doc.org/core-2.7.4/Enumerable.html#method-i-count
# count treats the block counting the elements that return a true value inside the block
# in this case it will return the integer 2

# 3. What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# The return value of the method reject will be a new array with the elements [1, 2, 3], since
# the block always evaluates to nil (falsy value) all the elements of the original array will be selected

# 4. What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# The return value for the method each_with_object will be the following hash
# {'a' => 'ant', 'b' => 'bear', 'c' => 'cat'}
# this is because during the iteration of the elements in the array, the key with the value of
# the first letter of the current element will be assign the value of the current element of the
# array and this key, value pair will be appended to the empty hash passed as the argument of the method each_with_object.
# Finally the hash passed as the argument of the method will be returned

# 5. What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# In this case the method Hash#shift will remove the first key, value pair of the hash and returned it as a two item array [:a, 'ant'].
# This method mutates the original hash

# 6. What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# The return value will be 11. Since the method pop destructively removes the last element of the array and returns it and then the method
# size is called on the return value of the pop method, which is 'caterpillar' and the size of that string is 11

# 7. What is the block's return value in the following code? How is it determined?
# Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# the return value of the block will be a boolean value, since num.odd? is the last statement evaluated
# the return value of the method any? is also a boolean. It will return true if the block return a value
# other than false or nil, for at least one element of the array.
# So, in this case it will return true and only the first element of the array will be evaluated since the method any?
# will stop after the first truthy value returned by the block.

# 8. How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# The method Array#take will take the first n number of elements of an array. The number of values is determined by the argument passed to the method.
# The method returns a new array, so it doesn't mutate the original array
# => [1, 2]

# 9. What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# The return value of map will be a new array with two elements [nil, 'bear']
# This is beacause the method map evaluates all the elements of the hash, and if the size value of the key, pair value is greater than 3
# the value will be return by the block otherwise nil will be returned.

# 10. What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# The returned value will be a new array [1, nil, nil]
# This is beacuse for numbers greater than 1, the if statement will return the return value of puts num, which is nil
# otherwise it will return the current element of the array.
