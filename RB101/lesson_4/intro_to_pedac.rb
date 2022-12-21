# PROBLEM:

# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.

# def change_me(string)
#   return "" if string.empty?
#   str_arr = string.split
#   counter = 0
#   loop do
#     break if counter == str_arr.size
#     if str_arr[counter] == str_arr[counter].reverse
#       str_arr[counter] = str_arr[counter].upcase
#     end
#     counter += 1
#   end
#   str_arr.join(' ')
# end

# p change_me("We will meet at noon") == "We will meet at NOON"
# p change_me("No palindromes here") == "No palindromes here"
# p change_me("") == ""
# p change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"

# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

=begin
- Questions:
  1. Will inputs always be strings?
- Input: String
- Output: Array of strings
- Rules:
  - Explicit:
    1. Palindrome words are case sensitive
  - Implicit:
    1. Return empty array if no palindromes are found
    2. Return empty array when an empty string is passed in as the argument
    3. The return object must be an array that contains all the palindromes (substrings) of the string
=end

# 2
# 4, 6
# 8, 10, 12
# 14, 16, 18, 20
# 22, 24, 26, 28, 30
# 32, 34, 36, 38, 40, 42

