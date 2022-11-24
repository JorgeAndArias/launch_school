def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(3)

# puts fibonacci(2)
# 2
# 1
# 0
# 1

# puts fibonacci(3)
# 3
# 2
# 1
# 0
# 1

