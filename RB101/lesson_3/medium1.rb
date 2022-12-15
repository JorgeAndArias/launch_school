# 1. Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

# For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

(1..10).to_a.each {|num| puts "The Flintstones Rock!".rjust("The Flintstones Rock!".length + num)}

# easier way
10.times { |num| puts (" " * num) + "The Flintstones Rock!"}

# 2. The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?
# => It is a problem because there is not conversion of the result (40 + 2), which is an Integer, into String

# => convert the Integer into String
puts "the value of 40 + 2 is " + (40 + 2).to_s
# => Use string interpolation
puts "the value of 40 + 2 is #{40 + 2}"

# 3. Alan wrote the following method, which was intended to show all of the factors of the input number:

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

=begin
Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop.
How can you make this work without using the begin/end until construct?
Note that we're not looking to find the factors for 0 or negative numbers,
but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.
=end

def factors(number)
  divisor = number
  factors = []
  until divisor == 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(1)

# What is the purpose of the number % divisor == 0 ?
# => Allows us to know if the result of the division is an Integer (no remainder (Float)).

# What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
# => The purpose is to return the array factors.
# => Better...The purpose is to make the array factors the return value of the method factors.


=begin
4. Alyssa was asked to write an implementation of a rolling buffer.
Elements are added to the rolling buffer and if the buffer becomes full,
then new elements that are added will displace the oldest elements in the buffer.

She wrote two implementations saying, "Take your pick.
Do you like << or + for modifying the buffer?".
Is there a difference between the two, other than what operator she chose to use to concatenate an element to the buffer?
=end
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# => Yes there is a difference between using << and + to add an element to an array. << mutates the argument passed to the method while + doesn't.
# => Better wording...The first method returns a reference to the object passed in as the buffer argument, while the second returns a new object.
# Having said that the first method will mutate the object passed in as buffer argument, while the second method will no modify the object passed in as
# input_array argument and will return a new object instead. The first method has a side effect and should be avoided.

=begin
5. Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator.
A user passes in two numbers, and the calculator will keep computing the sequence until some limit is reached.

Ben coded up this implementation but complained that as soon as he ran it, he got an error.
Something about the limit variable. What's wrong with the code?

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

The problem here is that methods create their own local scope and any variable initialise within it cannot be accesed from an outside scope,
also any variable initialised outside the method scope cannot be accesed within the method scope. In this case the variable limit is being initialised
within the main scope, therefore cannot be accesed by the method fib

How would you fix this so that it works?
initialising the variable limit whitin the method fib scope ==> NO
=> better solution, make limit an additional argument of the method fib and passed it when invoking fib
=end

limit = 15

def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"

=begin
6. What is the output of the following code?
=end
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)
# => new_answer = 50

p answer - 8
# => 34
# It is 34 because Integers are inmutable, so when answer is passed as the argument same_number in the method mess_with_it the method += returns a new object

# 7. One day Spot was playing with the Munster family's home computer and he wrote a small program to mess with their demographic data:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

# After writing this method, he typed the following...and before Grandpa could stop him, he hit the Enter key with his tail:

mess_with_demographics(munsters)

p munsters
=begin
Did the family's data get ransacked? Why or why not?
Yes, it did. Because the Hash methods []= and []+= mutates the elements of a Hash. So, in this case when the hash munsters
is being passed as the argument demo_hash of the method mess_with_demographics, and the methods []= and []+= are mutating the munsters hash

Better wording:
In Ruby when an object is being passed to a method its value is not what gets passed.
Under the hood Ruby passes the object_id of each argument to the method.
The method stores these object_id's internally in locally scoped variables.
So, in this case demo_hash is pointing to the original hash munsters, so a new hash does not get created, that's why the existing hash
gets messed up
=end

=begin
8. Method calls can take expressions as arguments.
Suppose we define a method called rps as follows, which follows the classic rules of rock-paper-scissors game:
it returns the winning fist or, in the case of a tie, the fist that both players played.
=end
def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

# What is the result of the following call?

puts puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock") # => rps("paper", "rock") => "paper"
# rps(rps("rock", "paper"), rps("rock", "scissors")), "rock" # => rps("paper", "rock"), "rock" => "paper", "rock"
# rps("rock", "paper"), rps("rock", "scissors") # =>"paper", "rock"

# 9. Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

bar(foo)
# => "no"
