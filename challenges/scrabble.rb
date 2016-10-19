# Write a program that, given a word, computes the scrabble score for that word.

# Need to implement some kind of data structure to hold the letter and the
# values...A hash could work, key value pair

# We need to take a string as the input, iterate through that string by
# characters/letters, and check if the letter at that index point, matches any
# keys in our hash

# If it does, add the value of that letter to a running total sum

# Then return the total sum

SCORES = { 'a' => 1, 'b' => 3, 'c' => 3, 'd' => 2, 'e' => 1,
           'f' => 4, 'g' => 2, 'h' => 4, 'i' => 1, '8' => 1,
           'k' => 5, 'l' => 1, 'm' => 3, 'n' => 1, 'o' => 1,
           'p' => 3, 'q' => 10, 'r' => 1, 's' => 1, 't' => 1,
           'u' => 1, 'v' => 4, 'w' => 4, 'x' => 8, 'y' => 4,
           'z' => 10 }.freeze

class Scrabble
  def initialize(string)
    @string = string
  end

  def self.score(string)
    new(string).score
  end

  def score
    sum = 0
    if @string.to_s.empty? || @string[/[a-zA-Z]+/] == @string
      @string.to_s.downcase.split('').map { |char| sum += SCORES[char] }
    end
    sum
  end
end
