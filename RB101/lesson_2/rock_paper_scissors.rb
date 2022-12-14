require 'pry'

VALID_CHOICES = %w(rock paper scissors lizard spock)

WINS_NEEDED = 3

MOVES = {
  rock: {
    beats: ['lizard', 'scissors'],
    abbreviation: 'r'
  },
  paper: {
    beats: ['rock', 'spock'],
    abbreviation: 'p'
  },
  scissors: {
    beats: ['lizard', 'paper'],
    abbreviation: 'sc'
  },
  spock: {
    beats: ['scissors', 'rock'],
    abbreviation: 'sp'
  },
  lizard: {
    beats: ['paper', 'spock'],
    abbreviation: 'l'
  }
}

# CHOICE_SHORT_TO_LONG = {
#   r: 'rock',
#   p: 'paper',
#   sc: 'scissors',
#   sp: 'spock',
#   l: 'lizard'
# }

INITIAL_MESSAGE = <<-MESSAGE
  ***************************************************
  *** WELCOME TO ROCK PAPER SCISSORS SPOCK LIZARD ***
  ***************************************************
  Rules:
  - You'll be competing against the computer
  - First to 3 is the absolute winner!
  Who wins?
  - Scissors cuts Paper
  - Paper covers Rock
  - Rock crushes Lizard
  - Lizard poisons Spock
  - Spock smashes Scissors
  - Scissors decapitates Lizard
  - Lizard eats Paper
  - Paper disproves Spock
  - Spock vaporizes Rock
  - Rock crushes Scissors
MESSAGE

CHOICE_MESSAGE = <<-MESSAGE
Choose one:
  r for rock
  p for paper
  sc for scissors
  sp for spock
  l for lizard
MESSAGE

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  MOVES[first.to_sym].include?(second)
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

def update_score(player, computer, score_hash)
  if win?(player, computer)
    score_hash[:player] += 1
  elsif win?(computer, player)
    score_hash[:computer] += 1
  end
end

def display_score(score_hash)
  prompt(
    "Current match count:
    You: #{score_hash[:player]}
    Computer: #{score_hash[:computer]}"
  )
end

def display_winner(score_hash)
  if score_hash[:player] == WINS_NEEDED
    prompt("You are the absolute winner!")
  else
    prompt("The computer is the absolute winner!")
  end
end

def valid_choice?(choice)
  is_valid = nil
  MOVES.each_key do |k|
    if MOVES[k][:abbreviation] == choice || k == choice.to_sym
      is_valid = true
      break
    else
      is_valid = false
    end
  end
end

puts `clear`

puts INITIAL_MESSAGE

loop do
  choice = ''
  score_counter = {
    player: 0,
    computer: 0
  }

  until score_counter[:player] == WINS_NEEDED || score_counter[:computer] == WINS_NEEDED
    loop do
      prompt(CHOICE_MESSAGE)
      choice = gets.chomp

      if valid_choice?
        choice = CHOICE_SHORT_TO_LONG[choice.downcase.to_sym]
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample
    prompt("You chose: #{choice}; Computer chose: #{computer_choice}")
    display_results(choice, computer_choice)
    update_score(choice, computer_choice, score_counter)
    display_score(score_counter)
  end

  display_winner(score_counter)
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing RPSSL!")
