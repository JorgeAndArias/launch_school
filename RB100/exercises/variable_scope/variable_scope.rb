# 1. What will the following code print and why? Don't run it until you have tried to answer.

a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a
# => 7
# methods have self-contained scope. So, only variables initialsed whitin the method definition can be referenced or modified in the method's body

# 2. What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a
# => 7
# Same logic as the previous exercise. The local variable a can't be accesed inside the my_value method definition. So, the variable a inside the
# method points to a different memory location

# 3. What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a
# => 7
# Same explanation from the previous two exercises still apply to this case.

# 4. What will the following code print, and why? Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
# => Xy-zy
# This is quite confusing for me. The reason that the output is Xy-zy is because strings are mutable (integers are not that's why the result of the previous
# exercises) and the method String#[] mutates the caller and since the parameter b takes the value of the argument a the string assigned to the variable a is
# mutated.

# 5. What will the following code print, and why? Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
# => Xyzzy
# Because the String#= returns a new string, therefore the value of the variable a remains unchanged. In other words, the assignment of the value a to a new
# variable inside the body of the method my_value doesn't mutate its original value.

# 6. What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a
# => `my_value': undefined local variable or method `a' for main:Object (NameError)
# variables outside the method definition cannot be accesed

# 7. What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
# => 3
# This is because a block can modified a variable definied outside the block. In this case a it will be assigned to the last value of the array, which is 3.

# 8. What will the following code print, and why? Don't run the code until you have tried to answer.'

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
# => error local variable a not defined
# This is because variables difined inside a block are not available outside of it.

# 9. What will the following code print, and why? Don't run the code until you have tried to answer.

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
# => 7
# This problem demonstrates shadowing. Shadowing occurs when a block argument hides a local variable that is defined outside the block.
# Since the outer a is shadowed, the a += 1 has no effect on it. In fact, that statement has no effect at all.

# 10. What will the following code print, and why? Don't run the code until you have tried to answer.
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
# => error local variable a inside my_value not initialsed
# The variable a is not available inside the method my_value
