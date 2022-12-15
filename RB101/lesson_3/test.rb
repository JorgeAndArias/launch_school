def mod_array(array)
  array << 1
end

def mod_array1(array)
  array = array + [1]
end

array_test = []

# p mod_array(array_test)
# p array_test
p mod_array1(array_test)
p array_test
