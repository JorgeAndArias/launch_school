# 1. Where can you find the most complete Ruby documentation?
# https://ruby-doc.org/ and https://docs.ruby-lang.org/en/ this last one is the most updated one.

# 2. Locate the description of the while loop in the ruby documentation.
# https://ruby-doc.com/core-2.7.5/doc/syntax/control_expressions_rdoc.html
# most of the features that control flow are located in the control expressions of the documentation

# 3. Using the ruby documentation, determine what value a while loop returns.
# The result of a while loop is nil unless break is used to supply a value.

# 4. In the previous exercise, you learned that the while loop returns nil unless break is used.
# Locate the documentation for break, and determine what value break sets the return value to for the while loop.
# https://ruby-doc.com/core-2.7.5/doc/syntax/control_expressions_rdoc.html#label-break+Statement

result = while true
  break 2
end
p result
# => 2

result = while true
  break
end
p result
# => nil

# when a value was not supplied to the break statement it will return nil

# Using the ruby documentation, determine how you can write large numbers in a way that makes them easier to read.
# https://ruby-doc.com/core-2.7.5/doc/syntax/literals_rdoc.html#label-Numbers
# using underscores

same = 1_987_654_321 == 1987654321

p same
# => true

# Using the ruby documentation, determine how you would write a Symbol that represents your name.
# We aren't looking for a String; we want a Symbol, which is one of ruby's datatypes.
p :jorge

# Let's move on now to the documentation you will use most often; the core API section on Classes and Modules.
# All of these are listed under Classes on the Core API page.
# Locate and open the class documentation for the String class.
# https://ruby-doc.com/core-2.7.5/String.html

# Use the ruby documentation for the String class to determine which method can be used to right justify a String object.
# .rjust

# How would you use String#upcase to create an uppercase version of the string "xyz"?
p "xyz".upcase

# Assume you have this Array:

a = %w(a b c d e)

# How would you use Array#insert to insert the numbers 5, 6, and 7 between the elements with values 'c' and 'd'?

a.insert(3, 5, 6, 7)

p a
# => ["a", "b", "c", 5, 6, 7, "d", "e"]

# Assume you have the following code:
# What will each of the 3 puts statements print?

s = 'abc def ghi,jkl mno pqr,stu vwx yz'
puts s.split.inspect
# => ["abc", "def", "ghi,jkl", "mno", "pqr,stu", "vwx", "yz"]
puts s.split(',').inspect
# => ["abc def ghi", "jkl mno pqr", "stu vwx yz"]
puts s.split(',', 2).inspect
# => ["abc def ghi", "jkl mno pqr,stu vwx yz"]

