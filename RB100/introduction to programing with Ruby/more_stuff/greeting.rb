# def greet(person)
#   puts "Hello, " + person
# end

# greet("John")
# greet(1)


def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_gretting(person)
  puts "" + greet(person) + ""
end

decorate_gretting("John")
decorate_gretting(1)
