# RB Intro to PEDAC

=begin
Write a method that takes an array of consecutive letters as input and returns the missing letter.
=end

# p determine_missing_letter(['a','b','c','d','f']) == 'E'
# p determine_missing_letter(['o','q','r','s']) == 'P'
# p determine_missing_letter(['H','J','K','L']) == 'i'
# p determine_missing_letter([]) == []

=begin
---------------- Problem
Given an array of sequential alphabet string characters, find the character that is missing from the sequence

Input: Array of strings
Output: Single string letter (the missing character)

Rules:
1. The letter of the string we want to return has to be in the opposite case of the strings in the array
2. Return an empty array if we are given an empty array

---------------- Modelling
['a','b','c','d','f'] == 'E'
['a', 'b', 'c', 'd', 'e', 'f'] --> 'e'

Input: ['a','b','c','d','f']
Comparative: ['a','b','c','d', 'e' ....] 'z'

['a','b','c','d','f']
['a','b','c','d','e' ....]

['o','q','r','s']
['o'....]

---------------- Data Structures
input[0].upto input[-1]
Create a range of the letters in the given array
Convert the range into an array

---------------- Algorithm
Guard clause: if the given array is empty, return an empty array

Compare the input array against the full sequence of the input array
  - Create/find the full sequence by targeting the first element in the given array and the last element, creating a range from that and then converting it to an array
    - This array will contain our missing letter

Loop through input array
SET current_letter = each local variable
SET sequence_letter = each local variable
Compare each local variable to current_letter
As soon as the characters do not match, explicitly return the character from the sequence array -- in the reverse case
=end


# def determine_missing_letter(array)
#   return array if array.empty?
#   letter_sequence = (array[0]..array[-1]).to_a
#   counter = 0
#   loop do
#     current_letter = array[counter]
#     sequence_letter = letter_sequence[counter]
#     if current_letter != sequence_letter
#       return sequence_letter.swapcase
#     end
#     counter += 1
#     break if counter == array.size
#   end
# end


# My solution:
def determine_missing_letter(array)
  return array if array.empty?
  letter_sequence = (array[0]..array[-1]).to_a
  array.each_with_index do |letter, index|
    return letter_sequence[index].swapcase if letter != letter_sequence[index]
  end
end


p determine_missing_letter(['a','b','c','d','f']) == 'E'
p determine_missing_letter(['o','q','r','s']) == 'P'
p determine_missing_letter(['H','J','K','L']) == 'i'
p determine_missing_letter([]) == []
