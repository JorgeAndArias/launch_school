=begin
P
Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results.
For similar reasons, the return value for our fourth example doesn't have any leading zeros.

Rules:
  Explicit:
    - Write a method that takes a positive integer as an argument
    - The mothod must return the digits of the number in reversed order
      - When the number is reversed, if it starts with zero, the zero should be ignored
E

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

D
Input = Integer
Output = Integer

We can convert the integer to string and store each 'number' in an array

A
- Define a method called reversed_number that takes one argument (number)
- In the method convert the number to a string
- add each character of the number string into an array
- Reverse the array
- Check if the first element of the array is '0'
  - if it is '0' remove it
  - continue until the first element of the array is not '0'
- Join the array, convert it to integer and return it
=end

def reversed_number(num)
  reversed_num_arr = num.digits
  loop do
    reversed_num_arr[0] == 0 ? reversed_num_arr.delete_at(0) : break
  end
  reversed_num_arr.join.to_i
end


# Suggested answer

# def reversed_number(number)
#   string = number.to_s
#   reversed_string = string.reverse
#   reversed_string.to_i
# end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
