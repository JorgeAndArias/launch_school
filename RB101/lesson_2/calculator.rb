require 'yaml'
# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

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

def op_to_msg(op)
  message = case op
            when '1'
              'Adding' if LANGUAGE == 'en'
              'Sumando' if LANGUAGE == 'es'
            when '2'
              'Subtracting' if LANGUAGE == 'en'
              'Restando' if LANGUAGE == 'es'
            when '3'
              'Multiplying' if LANGUAGE == 'en'
              'Multiplicando' if LANGUAGE == 'es'
            when '4'
              'Dividing' if LANGUAGE == 'en'
              'Dividiendo' if LANGUAGE == 'es'
            end
  # space to add extra code
  message
end

def messages(message, lang='eng')
  MESSAGES[lang][message]
end

prompt(messages('welcome', LANGUAGE))
name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end

prompt(format(messages("hi_user", LANGUAGE), name: name))

loop do # main loop
  number1 = ''

  loop do
    prompt(messages("first_number", LANGUAGE))
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(messages("invalid_number", LANGUAGE))
    end
  end

  number2 = ''

  loop do
    prompt(messages("second_number", LANGUAGE))
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(messages("invalid_number", LANGUAGE))
    end
  end

  operator_prompt = prompt(messages("choose_operator", LANGUAGE))

  prompt(operator_prompt)

  operator = ''

  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages("invalid_operator", LANGUAGE))
    end
  end

  prompt(format(messages("processing_result", LANGUAGE), op_to_msg: op_to_msg(operator)))

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

  prompt(format(messages("result", LANGUAGE), result: result))

  prompt(messages("again?", LANGUAGE))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(messages("thank_you", LANGUAGE))

