loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != "Y"
    break
  end
end

# Same thing using a while loop

answer = "Y"

while answer == "Y" do
  puts "Do you want to do that again?"
  answer = gets.chomp
end

# Same thing using an until loop

answer = "Y"

until answer != "Y" do
  puts "Do you want to do that again?"
  answer = gets.chomp
end
