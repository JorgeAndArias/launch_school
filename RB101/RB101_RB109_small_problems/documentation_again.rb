=begin
1. Locate the ruby documentation for methods File::path and File#path. How are they different?

File::path = https://ruby-doc.org/core-2.7.4/File.html#method-c-path
File#path =  https://ruby-doc.org/core-2.7.4/File.html#method-i-path

The first one is a class method, so this method is called on the File class.

The second one is an instance method, so this method is called on objects of the File class.

2. Assume you have the following code:

require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

What will each of the 4 puts statements print?

puts Date.civil
=> -4712-01-01
puts Date.civil(2016)
=> 2016-01-01
puts Date.civil(2016, 5)
=> 2016-05-01
puts Date.civil(2016, 5, 13)
=> 2016-05-13

3. Consider the following method and a call to that method:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

Use the ruby documentation to determine what this code will print.

=> 4, 5, 3, 6

4 is assigned to a then 6 is assigned to d. Leaving the arguments with default value.
So, 5 is assigned to the first argument b and d will be assigned the default value 3

4. The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can.
Assume you have the following code:

a = [1, 4, 8, 11, 15, 19]

How would you search this Array to find the first element whose value exceeds 8?

value = a.bsearch {|num| num > 8}
puts value


5. What do each of these puts statements output?

a = %w(a b c d e)
puts a.fetch(7)
=> IndexError
puts a.fetch(7, 'beats me')
=> 'beats me'
puts a.fetch(7) { |index| index**2 }
=> 49

6. What does this code print?

5.step(to: 10, by: 3) { |value| puts value }

It will print:
=> 5
=> 8

6. Use irb to run the following code:

s = 'abc'
puts s.public_methods.inspect

You should find that it prints a list of all of the public methods available to the String s;
this includes not only those methods defined in the String class,
but also methods that are inherited from Object
(which inherits other methods from the BasicObject class and the Kernel module). That's a lot of methods.

How would you modify this code to print just the public methods that are defined or overridden by the String class?
That is, the list should exclude all members that are only defined in Object, BasicObject, and Kernel.

puts s.public_methods(all=false).inspect

7. Use irb to run the following code:

a = [5, 9, 3, 11]
puts a.min

Find the documentation for the #min method and change the above code to print the two smallest values in the Array.

puts a.min(2)

8. Sometimes, the documentation is going to leave you scratching your head.

In a very early assignment at Launch School, you are tasked with writing a program that loads some text messages from a YAML file.
We do this with YAML::load_file:

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

Find the documentation for YAML::load_file.


=end
