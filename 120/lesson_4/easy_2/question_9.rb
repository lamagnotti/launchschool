class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end

  def play
    "Keep your best poker face!"
  end
end

# By adding a play method in the Bingo class, Ruby will use play there first
# before looking in our Game class
