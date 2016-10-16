# Write a program that given a phrase can count the occurrences of each word in that phrase.

# Example
# olly olly in come free =>

# olly: 2
# in: 1
# come: 1
# free: 1

class Phrase
  def initialize(words)
    @words = words
  end

  def word_count
    count = Hash.new(0)

    @words.scan(/\b[\w']+\b/) do |word|
      count[word.downcase] += 1
    end

    count
  end
end

word = Phrase.new('olly olly in come free')
