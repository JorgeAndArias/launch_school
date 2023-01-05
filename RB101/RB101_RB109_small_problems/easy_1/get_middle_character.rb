=begin
P
Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument.
If the argument has an odd length, you should return exactly one character.
If the argument has an even length, you should return exactly two characters.

Rules
 - Explicit:
  - Method takes one argument
    - argument is a non-empty string
  - Method to return the middle character
    - If argument is odd return one character
    - If argument even return the two middle characters

  Question:
  - Do we need to validate that the string is not empty?

E
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

D
Input: String
Output: String

A
- Create a method called center_of that takes one argument (text)
- Find the size of the text
- Check if the size is even or odd
- If the size is odd return the character in the position size / 2
- Else return the characters in the positions size / 2 - 1 and size / 2

=end

def center_of(text)
  size = text.size
  text.size.odd? ? text[size / 2] : text[size / 2 - 1 , 2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
