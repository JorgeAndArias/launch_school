=begin
P
Write a method that will take a short line of text, and print it within a box.

Rules
- Explict
  - Print a given string whitin a box
  - You may assume that the input will always fit in your terminal window.

- Implicit
  - Input will be always a string
  - The height of the box will be always the same
  - The width of the box will vary depending on the size of the text
  - There is a one space gap between the text and the box borders

E
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

D
Input: string
Output: String

A
- Create a method called print_in_box that takes 1 argument (text)
- Create a variable with the size of the text argument
- Create the box size depending on the size of the text
  - Create the base box and add as many '-' on the top and the bottom part of the box as the size of the text
  - Also, we must extend the lines right above and under the text, adding as many whitespaces as the size of the text
- Print the box
=end

def print_in_box(text)
  size = text.size
  puts <<-TEXT
  +-#{'-' * size}-+
  | #{' ' * size} |
  | #{text} |
  | #{' ' * size} |
  +-#{'-' * size}-+
  TEXT
end

# print_in_box('To boldly go where no one has gone before.')
# # +--------------------------------------------+
# # |                                            |
# # | To boldly go where no one has gone before. |
# # |                                            |
# # +--------------------------------------------+

# print_in_box('')
# # +--+
# # |  |
# # |  |
# # |  |
# # +--+

=begin
Further Exploration
Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window
(80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on multiple lines,
but still within a box.
=end

def print_in_box(text)
  if text.size <= 76
    puts <<-TEXT
    +-#{'-' * size}-+
    | #{' ' * size} |
    | #{text} |
    | #{' ' * size} |
    +-#{'-' * size}-+
    TEXT
  else
    text_1, text_2 = text[0..76], text[77..-1]
    extra_spaces = 76 - text_2.size
    puts <<-TEXT
    +-#{'-' * text_1.size}-+
    | #{' ' * text_1.size} |
    | #{text_1} |
    | #{text_2} #{' ' * extra_spaces} |
    | #{' ' * text_1.size} |
    +-#{'-' * text_1.size}-+
    TEXT
  end
end

print_in_box('This is a very very very very very very very very very very very very very very very very very very very long message.')
