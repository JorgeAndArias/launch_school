=begin

The PEDAC process

P: Understanding the problem (Most important)

- Establish the rules /  define the boundaries of the problem
  - Examine and analyse all the information given in the problem
  - It can be helpful to restate the problem in your own words or different format
  - Extract element of the problems into a list of requirements or rules
    - Rules can be explicit or implicit
      - Explicit: Clearly state in the problem description
      - Implicit: Not stated in the problem, they can be deducted from our understanding of the problem, examples or test cases.
- Doing this help us to create a mental model of the problem
- Spend enough time. Don't rush this step.


E: Examples and test cases

- Can confirm or refute assumptions
- Help to answer questions about implicit requirements
- Act as assertions which help to codify the rules and boundaries

D: Data structures

- Help us to reason with the data in a logical way
- Structuring data help us to interact with it in a logical way
- Help interact with data at implmentation level
- Thinking in terms of data structures is part of the problem solving process
- Data structures closely linked to algorithms
  - Set of steps from input to output
    - Involves structuring data in a certain way


A: Algorithms

- Logical sequence of steps for acomplishing a task or objective
  - Closely linked to data structures
  - Series of steps to structure data to produce the required output
- Keep it abstract and high level, no code even psudo code
  - Avoid implementation detail
  - Don't worry about effiency for now

C: Implementing a solution in code

- Translating solution algorithm to code.
- Think about algorithm in context of programing language
  - Language features and constrains
  - Characteristics of data structures
  - Build in functions/methods
  - Syntax and codings patterns
- Create test cases
- Code with intent

PROBLEM: Sum Even Number Rows

Imagine a sequence of consecutive even integers beginning with 2. The integers are grouped in rows, with the first row containing one integer,
the second row two integers, the third row three integers, and so on. Given an integer representing the number of a particular row, return
an integer representing the sum of all the integers in that row.

Rules / Requirements

- Sequence of even integers
- Sequence begins with two
- Integers are consecutive
- Sequence is grouped in to rows
- Each row incrementally larger: 1, 2, 3, ....
- Row 'number' equals the number of elements in the row
  - Row 1 has 1 element, row 2 has 2 elements, ...
- Input: single integer
  - I dentifies a 'row', which is a subset of a sequence of integers
- Output: a single integer
  - The sum of the integers in the row identified by the input integer

- Sequence:
2, 4, 6, 8, 10, 12, 14, 16, 18, ...

2
4, 6
8, 10. 12
14, 16, 18, 20
...

- How do we create the structure?

Examples

row number: 1 --> sum of integers in row: 2
row number: 2 --> sum of integers in row: 10
row number: 4 --> sum of integers in row: 68

2 --> 2
4, 6 --> 10

14, 16, 18, 20 --> 68

DATA STRUCTURES:

2
4, 6
8, 10. 12
14, 16, 18, 20
...

- Overall structure representing sequence as a whole
- Individual rows within overall structure
- Individual rows in a set order in context of sequence
- Individual rows contain integers
- Can assume integers are in a set order in the contxt of the sequence

[
  [2],
  [4, 6],
  [8, 10 ,12],
  [14, 16, 18, 20],
  ...
]

ALGORITHM:

1. Create an empty 'rows' array to contain all of the rows
2. Create a 'row' array and add it to the overall 'rows' array
3. Repeat step 2 until all the necessary rows have been created
 - All rows have been created when the length of the 'rows' array is equal to the input integer
4. Sum the final row
5. Return the sum

Problem: Create a row

Rules:
- Row is an array
- Arrays contain integers
- Integers are consecutive even numbers
- Integers in each row form part of an overall larger sequence
- Rows are of different lengths
- Input: The information needed to create the output
  - The starting integer
  - The length of the row
- Output: The row itself: [8, 10, 12]

Examples:

start: 2, length: 1 --> [2]
start: 4, length: 2 --> [4, 6]
start: 8, length: 3 --> [8, 10, 12]

Data structures:
- An array of integers

Algorithm:
1. Create an empty 'row' array to contain the integers
2. Add the starting integer
3. Increment the starting integer by 2 ti get the next integer in the sequence
4. Repeat steps 2 & 3 until the array has reached the correct length
5. Return the 'row' array

FINAL THOUGHTS

- Not a completely linear process
- Move back and forward between the steps
- Switch from implementation mode to abstract problem solving mode when necessary
- Don't try to problem solve at the code level
=end

# 1. Create an empty 'rows' array to contain all of the rows
# 2. Create a 'row' array and add it to the overall 'rows' array
# 3. Repeat step 2 until all the necessary rows have been created
#  - All rows have been created when the length of the 'rows' array is equal to the input integer
# 4. Sum the final row
# 5. Return the sum

# [
#   [2],
#   [4, 6],
#   [8, 10 ,12],
#   [14, 16, 18, 20],
#   ...
# ]

# Calculating the start integer:
# Rule: First integer of row == last integer of preceding row + 2
# Algorithm
#   - Get the last row of the rows array
#   - Get last integer of that row
#   - Add 2 to the integer

def sum_even_number_row(row_number)
  rows = []
  start_integer = 2
  (1..row_number).each do |current_row_number|
    rows << create_row(start_integer, current_row_number)
    start_integer = rows.last.last + 2
  end
  rows.last.sum
end

# 1. Create an empty 'row' array to contain the integers
# 2. Add the starting integer
# 3. Increment the starting integer by 2 ti get the next integer in the sequence
# 4. Repeat steps 2 & 3 until the array has reached the correct length
# 5. Return the 'row' array

# Start the loop
#   - Add the start integer to the row
#   - Increment the start integer by 2
#   - Break out of the loop if length of row equals row_length

def create_row(start_integer, row_length)
  row = []
  current_integer = start_integer
  loop do
    row << current_integer
    current_integer += 2
    break if row.length == row_length
  end
  row
end

# row number: 1 --> sum of integers in row: 2
# row number: 2 --> sum of integers in row: 10
# row number: 4 --> sum of integers in row: 68

p sum_even_number_row(1) == 2 # true
p sum_even_number_row(2) == 10 # true
p sum_even_number_row(4) == 68 # true

# start: 2, length: 1 --> [2]
# start: 4, length: 2 --> [4, 6]
# start: 8, length: 3 --> [8, 10, 12]

# p create_row(2, 1) == [2]
# p create_row(4, 2) == [4, 6]
# p create_row(8, 3) == [8, 10, 12]
