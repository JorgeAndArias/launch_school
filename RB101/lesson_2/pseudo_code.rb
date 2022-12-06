# 1. a method that returns the sum of two integers

# informal

# Given two integers
# add one to another
# save the result into a variable called result
# return result

# formal

# START

# given two integers called num1 and num2

# SET result = num1 + num2

# PRINT result

# END

# 2. a method that takes an array of strings, and returns a string that is all those strings concatenated together

# informal

# given an array of strings called arr_strings

# create a variable called final_string

# iterate through arr_strings and add each element of the array to the variable final_string

# return final_string

# formal

# START

# given an array of strings called arr_strings

# SET iterator = 0

# SET final_string = nil

# WHILE iterator <= size of arr_strings
#   SET final_string + element of arr_strings at the current position of the iterator

#   SET iterator = iterator + 1

# PRINT final_string

# END

# 3. a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element.
# For instance:
# every_other([1,4,7,2,5]) # => [1,7,5]

# GOAL: returns a new array with every other element from the original array

# informal

# given an array

# create an empty array to store the array to be returned. Called it result

# iterate through the original array and add the first element to the result array and skip the next element of the array.
# continue adding the next element and skipping until there are no more elements in the array

# return the result array

# formal
# START

# given an array of integers

# SET result = empty array

# SET iterator = 0

# WHILE array at the iterator position != nil
#   add current element of the array at the iterator position to the result array

#   SET iterator = iterator + 2

# PRINT result

# END

# 4. a method that determines the index of the 3rd occurrence of a given character in a string.
# For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x').
# If the given character does not occur at least 3 times, return nil.

# informal

# given a string and a character in the string

# create a counter variable = 0
# create an index variable = 0

# iterate through the string and update the counter if the character is the same as the current element of the string.
#   if the counter is equal to three return the value of the index
#   else update the index and move to the next iteration

# if the loop does not return anything return nil

# formal

# START

# given a string and a character in the string called char

# SET index = 0
# SET counter = 0

# WHILE index <= string size
#   IF string element at index position == char
#     SET counter = counter + 1

#   IF counter == 3
#     PRINT index
#   ELSE
#     SET index = index + 1
#     go to the next iteration

# PRINT nil (if the loop does not return anything)

# END

# 4. a method that takes two arrays of numbers and returns the result of merging the arrays.
# The elements of the first array should become the elements at the even indexes of the returned array,
# while the elements of the second array should become the elements at the odd indexes. For instance:

# merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]

# You may assume that both array arguments have the same number of elements.

# informal

# given two arrays with the same number of elements

# create an empty array called result

# create a variable called index = 0

# iterate through both arrays, add first the element at the index position of the first array to the result array and
# then add the the element at the index position of the second array to the result array

# increase the index by 1

# return the result array

# formal

# START

# given two arrays with the same number of elements called arr1 and arr2

# SET result = empty array

# SET index = 0

# WHILE index <= arr1 or arr2 size
#   SET result = add element of arr1 at the index position
#   SET result = add element of arr2 at the index position

#   SET index = index + 1

# PRINT result

# END
