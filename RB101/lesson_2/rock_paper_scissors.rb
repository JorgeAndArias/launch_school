VALID_CHOICES = %w(rock paper scissors lizard spock)

RULES = {
  rock: {
    win_against: ['lizard', 'scissors']
  },
  paper: {
    win_against: ['rock', 'spock']
  },
  scissors: {
    win_against: ['lizard', 'paper']
  },
  lizard: {
    win_against: ['paper', 'spock']
  },
  spock: {
    win_against: ['scissors', 'rock']
  }
}

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  RULES[first.to_sym][:win_against].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("it's a tie")
  end
end

loop do
  choice = ''
  user_wins = 0
  computer_wins = 0

  until user_wins == 3 || computer_wins == 3
    loop do
      prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      choice = gets.chomp

      if VALID_CHOICES.include?(choice.downcase)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      user_wins += 1
    elsif win?(computer_choice, choice)
      computer_wins += 1
    end

    prompt("Current match count: user: #{user_wins} - pc: #{computer_wins}")
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing. Good bye!")
