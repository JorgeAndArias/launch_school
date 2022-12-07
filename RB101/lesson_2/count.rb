require 'pry'

counter = 0

loop do
  counter += 1
  break if counter == 5
  binding.pry
end
