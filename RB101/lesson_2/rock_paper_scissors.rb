VALID_CHOICES = %w(rock paper scissors lizard spock)

WINS_NEED = 3

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

def clear_terminal
  puts `clear`
end

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  MOVES[first.to_sym][:beats].include?(second)
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
  if score_hash[:player] == WINS_NEED
    prompt("You are the absolute winner!")
  else
    prompt("The computer is the absolute winner!")
  end
end

def valid_choice?(player)
  MOVES.each_key do |k|
    if MOVES[k][:abbreviation] == player.downcase || k == player.downcase.to_sym
      return true
    end
  end
  false
end

def return_long_form_choice(player)
  if MOVES.keys.include?(player.downcase.to_sym)
    player.downcase
  else
    MOVES.each_key do |k|
      if MOVES[k][:abbreviation] == player.downcase
        return k.to_s
      end
    end
  end
end

def display_round_results(player, computer, score_hash)
  prompt("You chose: #{player}; Computer chose: #{computer}")
  display_results(player, computer)
  display_score(score_hash)
end

def get_player_choice
  choice = nil
  loop do
    prompt(CHOICE_MESSAGE)
    choice = gets.chomp
    if valid_choice?(choice)
      choice = return_long_form_choice(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  choice
end

def play_round(score_hash)
  until score_hash[:player] == WINS_NEED || score_hash[:computer] == WINS_NEED
    choice = get_player_choice()
    computer_choice = VALID_CHOICES.sample
    update_score(choice, computer_choice, score_hash)
    display_round_results(choice, computer_choice, score_hash)
  end
end

clear_terminal()

puts INITIAL_MESSAGE

loop do
  score_count = {
    player: 0,
    computer: 0
  }

  play_round(score_count)
  display_winner(score_count)
  play_again?()
  prompt("Do you want to play again?
  (Type yes or y to continue or any other key to exit)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  clear_terminal()
end

prompt("Thank you for playing RPSSL!")
