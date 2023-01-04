=begin
P
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1.
The length of the string should match the given integer.

- Rules
  Explicit
    - Method shoult take one argument
      - argument must be a positive integer
    - return value is a string
      - string must start with 1 and alternate between 1s and 0s
      - the returned string must be the same length as the integer argument
  Implicit
    - zero and negative values are not aceptable

  Questions
    - Should we handle wrong arguments errors?

E
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

D
Input: Positive integer
Output: String of alternating 1s and 0s

A
- Define a method called stringy that takes one argument (num)
- Create a variable called result and initialize it with a value of empty string
- Do as many times as the num argument the following
  1 Add the string '1'
  2 Then add a string '0'
  3 Repeat 1 and 2 until the size of the variable result is equal to the num argument

=end

def stringy(num)
  stringy_string = ''
  num.times do |index|
    index.even? ? stringy_string << '1' : stringy_string << '0'
  end
  stringy_string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

=begin
Further Exploration
Modify stringy so it takes an additional optional argument that defaults to 1.
If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s,
but starting with 0 instead of 1.
=end

def stringy(num, starter='1')
  stringy_string = ''
  num.times do |index|
    if starter == '1'
      index.even? ? stringy_string << starter : stringy_string << '0'
    elsif starter.to_s == '0'
      index.even? ? stringy_string << starter.to_s : stringy_string << '1'
    end
  end
  stringy_string
end

puts stringy(6, 0)
