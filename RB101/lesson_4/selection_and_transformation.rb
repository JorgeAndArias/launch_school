produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  products = hash.keys
  counter = 0
  fruits = {}

  loop do
    current_product = products[counter]
    current_prod_type = hash[current_product]
    if current_prod_type == 'Fruit'
      fruits[current_product] = current_prod_type
    end
    counter += 1
    break if counter == products.size
  end
  fruits
end


# p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

# Tranformation

def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter += 1
  end

  doubled_numbers
end

# my_numbers = [1, 4, 3, 7, 2, 6]
# double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]

# If we wanted to, we could've easily decided that mutating the method argument is the right approach.
# Can you implement a double_numbers! method that mutates its argument?

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] = current_number * 2
    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
# p double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]
# p my_numbers

def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# not mutated
my_numbers                      # => [1, 4, 3, 7, 2, 6]

# What if we wanted to transform the numbers based on their position in the array rather than their value?
# Try coding a solution that doubles the numbers that have odd indices:

def double_odd_indices(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
# p double_odd_indices(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# not mutated
# p my_numbers                      # => [1, 4, 3, 7, 2, 6]

def multiply(numbers, multiplier)
  counter = 0
  result = []

  loop do
    break if numbers.size == counter

    result << numbers[counter] * multiplier
    counter += 1
  end

  result
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]

