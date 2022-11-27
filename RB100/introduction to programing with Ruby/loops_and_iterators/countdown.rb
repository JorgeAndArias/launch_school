x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1
end

#  Another way to write the same using until

until x < 0
  puts x
  x -= 1
end

puts "Done!"
