# About the game

# TTT is a 2 player game, played on a 3x3 grid
# Players each take turns marking a square, with either an X or an O
# The first player to 3 squares in a row, wins

# Board (grid)
# Square
# Player
- mark
- play

# Our spike

class Board
  def initialize
  end
end

class Square
  def initialize
  end
end

class Player
  def initialize
  end

  def mark
  end
end

class TTTGame
  def play
    display_welcome_message
    loop do
      display_board
      first_player_moves
      break if someone_won? || board_full?

      second_player_moves
      break if someone_won? || board_full?
    end
    display_result
    display_goodbye_message
  end
end

game = TTTGame.new
game.play
