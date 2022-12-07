require 'yaml'
# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end


def valid_number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  message = case op
            when '1'
              'Adding'
            when '2'
              'Subtracting'
            when '3'
              'Multiplying'
            when '4'
              'Dividing'
            end
  # space to add extra code
  message
end

prompt(MESSAGES["welcome"])
name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES["valid_name"])
  else
    break
  end
end

prompt(format(MESSAGES["hi_user"], name: name))

loop do # main loop
  number1 = ''

  loop do
    prompt(MESSAGES["first_number"])
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(MESSAGES["invalid_number"])
    end
  end

  number2 = ''

  loop do
    prompt(MESSAGES["second_number"])
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES["invalid_number"])
    end
  end

  operator_prompt = MESSAGES["choose_operator"]

  prompt(operator_prompt)

  operator = ''

  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES["invalid_operator"])
    end
  end

  prompt(format(MESSAGES["processing_result"], operation_to_message: operation_to_message(operator)))

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt(format(MESSAGES["result"], result: result))

  prompt(MESSAGES["again?"])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES["thank_you"])
