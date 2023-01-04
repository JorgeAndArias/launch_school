=begin
P
Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars.
The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle,
and the other end at the upper-right.

Rules
- Explicit
  - Method should take one argument
    - argument to be a positive integer
  - Method should return a right triangle
    - the sides of the triangle must have the amount of stars of the integer argument
    - The hypotenuse should have one start at the bottom left corner and another at the top right corner
- Implicit
  - Return value is a string of stars that form a right triangle

E
triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

D
The main data structure is a String and probably using an array from 0 to the method argument can be helpful

A
- Create a method called triangle that takes one argument (num)
- Create the triangle depending on the argument
  - create an array from 1 to num
  - To create the triangle it should follow the following logic
    num = 3
    create an array that contains the stars per line
    - line 1:
      whitespaces = num - array[0] # 2
      stars = array[0] # 1
    - line 2:
      whitespaces = num - array[1] # 1
      stars = array[1] # 2
    - line 3:
      whitespaces = num - array[2] # 0
      stars = array[2] # 3
=end

def triangle(number)
  stars_per_line = (1..number).to_a
  triangle = []

  stars_per_line.each_index do |index|
    whitespaces = number - stars_per_line[index]
    triangle << "#{' ' * whitespaces}#{'*' * stars_per_line[index]}"
  end
  puts triangle
end

# triangle(8)

# suggested solution

def suggested_triangle(side)
  stars = 1
  spaces = side - 1

  side.times do
    puts (' ' * spaces) + ('*' * stars)
    stars += 1
    spaces -= 1
  end
end

# suggested_triangle(8)

=begin
Further Exploration
- Try modifying your solution so it prints the triangle upside down from its current orientation.
=end

def upside_down_triangle(number)
  stars_per_line = (1..number).to_a
  triangle = []

  stars_per_line.each_index do |index|
    whitespaces = number - stars_per_line[index]
    triangle << "#{' ' * whitespaces}#{'*' * stars_per_line[index]}"
  end
  puts triangle.reverse
end

# upside_down_triangle(8)

=begin
Further Exploration
- Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid.
=end

