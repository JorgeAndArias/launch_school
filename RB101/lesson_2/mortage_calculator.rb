# goal: Build a loan calcultor that takes 3 pieces of information and returns the monthly payment

# Loan ammount, annual percentage rate, loan duration

# get input from the user for the loan ammount and store it in a variable called loan_ammount
# get input from the user for the annual percentage rate and store it in a variable called annual_percentage_rate
# get input from the user for the loan duration and store it in a variable called loan_duration (years)

# convert annual_percentage_rate to monthly
# convert loan_duration to months

# use formula to calculate the monthly payment and print it for the user

def prompt(message)
  puts "=> #{message}"
end

def integer?(num)
  num.to_i.to_s == num && num.to_i.positive?
end

def float?(num)
  num.to_f.to_s == num && num.to_f.positive?
end

def valid_number?(num)
  (integer?(num) || float?(num))
end

prompt("Welcome to the loan calculator")

loan_ammount = nil

loop do
  prompt("Please enter the loan ammount:")
  loan_ammount = gets.chomp

  break if valid_number?(loan_ammount)

  prompt("Please enter a valid loan ammount")
end

ann_percent_rate = nil

loop do
  prompt("Please enter the annual percentage rate:")
  ann_percent_rate = gets.chomp

  break if valid_number?(ann_percent_rate)

  prompt("Please enter a valid annual percentage rate")
end

loan_duration = nil

loop do
  prompt("Please enter the loan duration (years):")
  loan_duration = gets.chomp

  break if valid_number?(loan_duration)

  prompt("Please enter a valid loan_duration")
end


monthly_pay = loan_ammount.to_i * (((ann_percent_rate.to_f / 100) / 12) / (1 - (1 + ((ann_percent_rate.to_f / 100) / 12))**(-(loan_duration.to_i * 12))))

p monthly_pay.round(2)
