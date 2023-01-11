require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
GAMES_TO_WIN = 1

def prompt(text)
  puts "=> #{text}"
end

# rubocop:disable Metrics/AbcSize
def joinor(arr, delimiter=',', last_delimiter='or')
  result = ''
  arr.each do |element|
    result << if arr.size == 1
                return arr.first.to_s
              elsif arr.size == 2
                return "#{arr.first} #{last_delimiter} #{arr.last}"
              elsif element == arr.last
                last_delimiter + " " + element.to_s
              else
                element.to_s + delimiter + " "
              end
  end
  result
end

def display_board(brd, scores_hash)
  # system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  display_scores(scores_hash)
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))})"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def find_best_move(brd, potential_winning_line)
  best_moves = potential_winning_line.select do |position|
    brd[position] == INITIAL_MARKER
  end
  best_moves.sample
end

def computer_potential_loss?(brd, positions)
  brd.values_at(*positions).count(PLAYER_MARKER) == 2 &&
    brd.values_at(*positions).count(INITIAL_MARKER) == 1
end

def computer_potential_win?(brd, positions)
  brd.values_at(*positions).count(COMPUTER_MARKER) == 2 &&
    brd.values_at(*positions).count(INITIAL_MARKER) == 1
end

# rubocop:disable Metrics/MethodLength, Metrics/CyclomaticComplexity
def computer_places_piece!(brd)
  square = nil

  # Offense
  WINNING_LINES.each do |line|
    if computer_potential_win?(brd, line)
      square = find_best_move(brd, line)
      break if square
    end
  end

  # Defense
  if !square
    WINNING_LINES.each do |line|
      if computer_potential_loss?(brd, line)
        square = find_best_move(brd, line)
        break if square
      end
    end
  end

  # Pick square 5
  if !square && empty_squares(brd).include?(5)
    square = 5
  end

  # Any square
  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end
# rubocop:enable Metrics/MethodLength, Metrics/CyclomaticComplexity

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def update_score(scores_hash, winner)
  scores_hash[winner] += 1
end

def display_scores(scores_hash)
  puts "Scores:"
  scores_hash.each { |user, score| prompt "#{user}: #{score}" }
end

def game_winner?(scores_hash)
  scores_hash.values.include?(GAMES_TO_WIN)
end

def who_goes_first
  first_turn = nil
  loop do
    prompt "Who should go first?"
    puts "1. I go first!"
    puts "2. Computer can go first!"
    puts "3. I can't decide. Choose for me!"
    choice = gets.chomp.to_i
    first_turn = case choice
                 when 1 then 'player'
                 when 2 then 'computer'
                 when 3 then %w(player computer).sample
                 end
    break if first_turn
    prompt "Sorry, that's not a valid choice."
  end
  first_turn
end

loop do
  scores = {
  'Player' => 0,
  'Computer' => 0
  }
  board = initialize_board
  first_turn = who_goes_first

  loop do
    if first_turn == 'player'
      display_board(board, scores)
      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    else
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
      display_board(board, scores)

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end
  end

  display_board(board, scores)

  if someone_won?(board)
    winner = detect_winner(board)
    prompt "#{winner} won the round!"
    update_score(scores, winner)
  else
    prompt "It's a tie!"
  end

  if game_winner?(scores)
    prompt "#{detect_winner(board)} won the game!"
    prompt "Play again? (y or n)"
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  else
    prompt "Get ready for the next round!"
  end

  # Add sleep so the round result is visible before clearing the screen
  sleep(2)
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
