=begin
P
Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary.
If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

Rules:
-Explicit
  - Method should take 2 arguments
    - A positive integer and a boolean
  - The return value must be the bonus for a given salary
  - Bonus:
    - Half of the salary if second argument is true
    - Zero if second argument is false

-Implicit
  - returned value is an integer

- Questions
  - Should we handle wrong arguments?
    - First argument not a positive integer
    - Second argument not a boolean

E
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

The tests above should print true.

D
Input: Integer and boolean
Output: Integer

The main data structure is Integer

A
- Define a method called calculate_bonus that takes 2 arguments (salary, bonus)
- If bonus is true divide the salary in 2 and return it
- Else return 0
=end

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
