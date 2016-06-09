require 'pry'

INITIAL_MARKER = ' '                        # we use constants to not
PLAYER_MARKER = 'X'                         # have hardcoded values
COMPUTER_MARKER = 'O'

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
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

def initalize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = INITIAL_MARKER}  # iterate through the range
  new_board                                            # then populate new board
end

def empty_squares(brd)
  brd.keys.select{|num| brd[num] == INITIAL_MARKER}
end

def player_places_piece!(brd)
  square = ''
  loop do                                   # validation logic
    prompt "Choose a square! (#{empty_squares(brd).join(', ')}):"
    square = gets.chomp.to_i                # need to break to get out of condition
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  false
end

board = initalize_board                     # board variable keeps track the state of the game
display_board(board)

loop do
  player_places_piece!(board)                  # player chooses, see method above
  computer_places_piece!(board)
  display_board(board)
  break if someone_won?(board) || board_full?(board)
end

display_board(board)
