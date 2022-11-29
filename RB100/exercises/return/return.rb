# 1. What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  return 'Breakfast'
end

puts meal
#  => It will return  Breakfast

# 2. What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  'Evening'
end

puts meal

# => I will return Evening

# 3. What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal

# => It will return Breakfast, because once the method reaches the return statement it will return that value and exit the method

# 4. What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

# => It will print Dinner \n Breakfast and it will return Breakfast

# 5. What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  'Dinner'
  puts 'Dinner'
end

p meal
# => It will print Dinner \n nil. Because the puts statement inside the method will print "Dinner" but it return nill and since that's the last statement
# in the method that's the return value of the method. Also, the p method prints the return value of the method which is nill in this case

# 6. What will the following code print? Why? Don't run it until you've attempted to answer.

def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal
# => It will print Breakfast, since it is the value asssigned to the return statement of the method

# 7. What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# => It will print numbers from 0 to 5. The times method returns the initial integer in this case 5. So it will print 0 to 4 and finally return 5.

# 8. What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# => It will print numbers from 0 to 4 and finally a 10.

# 9. What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep
# => It will print numbers from 0 to 2 and then nil

# 10. What will the following code print? Why? Don't run it until you've attempted to answer.

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number
# => It will print 1
