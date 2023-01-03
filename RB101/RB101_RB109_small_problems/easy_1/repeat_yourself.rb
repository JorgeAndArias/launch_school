=begin
PROBLEM: Repeat yourself

Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

Example:

repeat('Hello', 3)
Output:

Hello
Hello
Hello

Rules:
  Explicit:
  - Method should take 2 arguments (string and an integer)
  - The integer of the second argument must be positive
  - The method should print the argument string as many times as the second argument

  Implicit:
    - String to be printed in separate lines

Questions:
- Do we need to worry about validations?
  - first argument not being a string
  - second argument not being a positive integer?

EXAMPLES
repeat('Hello', 3)
Output:

Hello
Hello
Hello

repeat('HI', -1)
Output:

Second argument must be a positive integer (grater than zero)

DATA STRUCTURES
Input: string, integer
Output: String(s)

ALGORITHM
- create a method called repeat that takes 2 arguments (string, repetion_times)
- check if the argument times is a positive integer
- if it is not a positive integer display a message saying "Second argument must be a positive integer (grater than zero)"
- display the string argument as many times as the argument times
=end

def repeat(string, repetion_times)
  puts " Second argument must be a positive integer (grater than zero)" unless repetion_times.positive?

  repetion_times.times do
    puts string
  end

end

repeat('Hello', 3)

# Hello
# Hello
# Hello

# repeat('HI', -1)

# Second argument must be a positive integer (grater than zero)
