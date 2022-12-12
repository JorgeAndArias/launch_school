=begin
goal: Build a mortgage calcultor that takes 3 pieces of information
and returns the monthly payment

Loan ammount, annual percentage rate, loan duration

get input from the user for the loan ammount, annual percentage rate and
loan duration and store them variables

convert rate to monthly
ask if duration is in years or months and transform years to months

use formula to calculate the monthly payment and print it for the user
=end

require 'yaml'

MONTHS_YEAR = 12
MESSAGES = YAML.load_file('mort_calc_messages.yml')
# Clear the console before executing the program
puts `clear`

def prompt(message)
  puts "=> #{message}"
end

def positive_integer?(num)
  num.to_i.to_s == num && num.to_i.positive?
end

def positive_float?(num)
  num.to_f.to_s == num && num.to_f.positive?
end

def valid_number?(num)
  (positive_integer?(num) || positive_float?(num))
end

def calc_month_pay(loan_amt, ann_perc_rate, loan_dur)
  apr_month = (ann_perc_rate.to_f / 100) / MONTHS_YEAR
  total =loan_amt.to_i * ((apr_month) / (1 - (1 + (apr_month))**(-(loan_dur))))
  total.round(2)
end

puts MESSAGES['welcome']

loop do
  loan_ammount = nil

  prompt(MESSAGES['loan_ammount'])

  loop do
    loan_ammount = gets.chomp
    break if valid_number?(loan_ammount)
    prompt(MESSAGES['invalid_loan_ammount'])
  end

  ann_percent_rate = nil

  prompt(MESSAGES['ann_percent_rate'])

  loop do
    ann_percent_rate = gets.chomp
    break if valid_number?(ann_percent_rate)
    prompt(MESSAGES['invalid_ann_percent_rate'])
  end

  time_duration = nil

  prompt(MESSAGES['time_of_duration'])

  loop do
    time_duration = gets.chomp
    break if time_duration.downcase == 'm' || time_duration.downcase == 'y'
    prompt(MESSAGES['invalid_time_of_duration'])
  end

  loan_duration = nil

  prompt(MESSAGES['loan_duration'])

  loop do
    loan_duration = gets.chomp
    if valid_number?(loan_duration) && time_duration.downcase == 'm'
      loan_duration = loan_duration.to_i
      break
    elsif valid_number?(loan_duration) && time_duration.downcase == 'y'
      loan_duration = loan_duration.to_i * MONTHS_YEAR
      break
    end
    prompt(MESSAGES['invalid_loan_duration'])
  end

  monthly_pay = calc_month_pay(loan_ammount, ann_percent_rate, loan_duration)

  prompt(format(MESSAGES['monthly_pay'], monthly_pay: monthly_pay))

  prompt(MESSAGES['again'])
  again_answer = gets.chomp
  break unless again_answer.downcase().start_with?('y')
end

puts MESSAGES['thank_you']
