=begin
1. What does the each method in the following program return after it is finished executing?

x = [1, 2, 3, 4, 5]

x.each do |a|
  a + 1
end

=> [1, 2, 3, 4, 5]

2. Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP".
Each loop can get info from the user.
=end

# input = ""

# while input != "STOP" do
#   puts "type STOP if you want me to stop"
#   input = gets.chomp
# end

# 3. Write a method that counts down to zero using recursion.

def countdown(num)
  if num <= 0
    puts num
  else
    puts num
    countdown(num - 1)
  end
end

puts countdown(10)
puts countdown(-10)
