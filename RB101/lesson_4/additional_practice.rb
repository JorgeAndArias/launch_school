# 1. Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are the positions in the array.

hash = {}

flintstones.each_with_index do |name, index|
  hash[name] = index
end

# 2. Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_ages = 0

ages.each do |_, age|
  total_ages += age
end

# Another solution

ages.values.inject(:+) # => 6174

# 3. In the ages hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# remove people with age 100 and greater.

ages.delete_if {|_, age| age >= 100}
# p ages

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.keep_if { |_, age| age < 100 }
# p ages

# 4. Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

min_age = ages.select do |_, age|
  min_age = ages.values.min
  age == min_age
end

# 5. In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

flintstones.index {|name| name[0, 2] == 'Be'}

# 6. Write code that changes the array below so that all of the names are shortened to just the first three characters.
# Do not create a new array.

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! {|name| name[0, 3]}

# 7. Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# My solution:
letters_array = statement.delete(' ').chars
hash = {}

for letter in letters_array
  count = letters_array.count(letter)
  hash[letter] = count
end

# p hash.sort.to_h

# Suggested solution
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

# p result.sort.to_h

# 8. What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# 1
# 3

# What would be output by this code?

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end

# 1
# 2

# numbers = [1, 2, 3, 4]
# numbers.each_with_index do |number, index|
#   p "#{index}  #{numbers.inspect}  #{number}"
#   numbers.shift(1)
# end

# 9. As we have seen previously we can use some built-in string methods to change the case of a string.
# A notably missing method is something provided in Rails, but not in Ruby itself...titleize.
# This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title. For example, the string:

words = "the flintstones rock"

# would be:

# words = "The Flintstones Rock"

# Write your own version of the rails titleize implementation.

def titleize(string)
  letters_arr = string.chars
  result = ''

  letters_arr.each_with_index do |letter, index|
    if index == 0
      result << letter.upcase
    elsif letters_arr[index - 1] == ' '
      result << letter.upcase
    else
      result << letter
    end
  end
  result
end

titleize(words)

# suggested solution

words.split.map { |word| word.capitalize }.join(' ')

# 10. Given the munsters hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Modify the hash such that each member of the Munster family has an additional "age_group" key
# that has one of three values describing the age group the family member is in (kid, adult, or senior).
# Your solution should produce the hash below

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

munsters.each do |name, details|
  age = details['age']
  case age
  when 0..17
    munsters[name]['age_group'] = 'kid'
  when 18 .. 64
    munsters[name]['age_group'] = 'adult'
  else
    munsters[name]['age_group'] = 'senior'
  end
end

