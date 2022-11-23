a = [1, 2, 3]

# Example of a method definition that mutates its argument permanently

def mutate(array)
  array.pop
end

def no_mutate(array)
  array.last
end

p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"

# p "Before no mutate method: #{a}"
# no_mutate(a)
# p "After no mutate method: #{a}"
