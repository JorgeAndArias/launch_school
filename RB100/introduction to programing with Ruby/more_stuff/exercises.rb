=begin
1. Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.
"laboratory"
"experiment"
"Pans Labyrinth"
"elaborate"
"polar bear"
=end

def lab_match(string)
  if string =~ /lab/
    puts "sequence of charaters 'lab' found in string #{string}"
  else
    puts "sequence of charaters 'lab' NOT found in string #{string}"
  end
end

string = ["laboratoy", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

string.each do |word|
  lab_match(word)
end

# 2. What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# => nothing is printed because the block was never activated with the .call method. It returns a Proc object

# 3. What is exception handling and what problem does it solve?

#  => It's how possible errors are handled in a program. It helps to avoid programs to crash when an exception or error is encountered.

# Exception handling is a structure used to handle the possibility of an error occurring in a program.
# It is a way of handling the error by changing the flow of control without exiting the program entirely.

# 4. Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

=begin
Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

Give us the following error when we run it?

block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
from test.rb:5:in `<main>'

=> it is throwing and error because in the definition of the method the parameter is missing the ampersand sign (&) this sign allows the block to be
passed as a parameter
=end
