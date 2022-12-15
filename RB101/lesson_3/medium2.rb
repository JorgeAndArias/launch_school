=begin
1. Every object in Ruby has access to a method called object_id, which returns a numerical value that uniquely identifies the object.
This method can be used to determine whether two variables are pointing to the same object.

Take a look at the following code and predict the output:
=end

a = "forty two"
b = "forty two"
c = a

puts a.object_id
# 1
puts b.object_id
# 2
puts c.object_id
# 1

# => Quick wording...even though the variables a and b appear to have the same value assigned to them, their are pointing to a different
# memory location, so their ids are different. On the other hand, the variable c is referencing the same object as a, so it is pointing to
# the same memory location as a, so their ids are the same.

# 2. Let's take a look at another example with a small difference in the code:

a = 42
b = 42
c = a

puts a.object_id
# => 1
puts b.object_id
# => 1
puts c.object_id
# => 1

# => this is because Integers are inmutable, so in Ruby their can only be one Object for each number. In this case a, b and c are
# referencing the same inmutable Integer 42

=begin
3. Let's call a method, and pass both a string and an array as arguments and see how even though they are treated in the same way by Ruby,
the results can be different.

Study the following code and state what will be displayed...and why:
=end

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# => My string looks like this now: pumpkins
puts "My array looks like this now: #{my_array}"
# => My array looks like this now: ["pumpkins", "rutabaga"]

=begin
This is because when my_string is passed in as the argument a_string_param in the method tricky_method,
the String method += does not mutate the argument passed, on the other hand when my_array is passed in as the argument
an_array_param in the same method, the Array method << does mutate the original array object

better wording...
Both arguments are passed "by value", but in Ruby the value that gets passed is a reference to some object.
The string argument is passed to the method as a reference to an object of the type String. Same, the array argument
is passed to the method as a reference to an object of the type Array.

Even though a reference to these objects are passed to the method, the method initialise new local variables for both objects and
assigns their references to these variables.

The important part is to understand that the method String#+= returns a new String object. The reference to this new object gets assigned to the local
variable a_string_param, so that variable is not longer pointing to the original String object passed as the string argument.

With the array object, the method Array#<< mutates the original object to the local variable an_array_param is still pointing to the initial array object
therefore this object is being mutated.
=end

# 4. To drive that last one home...let's turn the tables and have the string show a modified output,
# while the array thwarts the method's efforts to modify the user's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
# => My string looks like this now: pumpkinsrutabaga
puts "My array looks like this now: #{my_array}"
# => My array looks like this now: ['pumpkins']

=begin
The string argument is passed to the method as a reference to an object of the type String. The method
initialise a local variable a_string_param and assined the reference to the string object.
In the method the String#<< method mutates the existing string object. So the local variable a_string_param and my_string
are still pointing to the same object.

On the other hand, the array method is passed to the method as a reference to an object of the type Array. The method initialise the
local variable an_array_param and assigns the reference to the array object.
In the method the Array#= creates a new object, so the local variable an_array_param is not longer pointing to the same object as my_array.
=end

=begin
5. Depending on a method to modify its arguments can be tricky:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

Whether the above "coincidentally" does what we think we wanted depends upon what is going on inside the method.

How can we change this code to make the result easier to predict and easier for the next programmer to maintain?
That is, the resulting method should not mutate either argument, but my_string should be set to 'pumpkinsrutabaga'
and my_array should be set to ['pumpkins', 'rutabaga']
=end

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  # This is new, keep this in mind
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]

my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# 6. How could the following method be simplified without changing its return value?
# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end

def color_valid(color)
  color == "blue" || color == "green"
end
