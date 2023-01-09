# Example 3

[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end
# 1
# 3
# => [1, 3]

# Example 4

my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

# 18
# 7
# 12
# => [[18, 7], [3, 12]]


# Example 5

[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

# What will the return value be in this example? Use what you've learned so far to break it down on your own before checking the solution below.

# [[2, 4], [6, 8]]
