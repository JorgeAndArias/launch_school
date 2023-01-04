=begin
P
Write a method that takes one integer argument, which may be positive, negative, or zero.
This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

Keep in mind that you're not allowed to use #odd? or #even? in your solution.

Rules:
  Explicit:
  - Method takes one argument
  - The argument can be positibe, negative or zero
  - Method will return true if the argument is odd
  - Do not use the methods #odd? or #even?
  - No need to validate if the argument is a valid integer

  Implicit:
  - Method will return false if the argument is even

E

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

D
Input: Integer
Output: Boolean

A
- Create a method called is_odd? that takes one argument (number)
- Use the modulus operator to divide that argument number by 2
  - if the result of the operation is diferent than zero return true
  - else return false
=end

def is_odd?(num)
  num % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

=begin
Further Exploration

The Integer#remainder method performs a remainder operation in Ruby. Rewrite #is_odd? to use Integer#remainder instead of %.
Note: before version 2.4, Ruby used the Numeric#remainder method instead.
=end

def is_odd?(num)
  num.remainder(2) != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
