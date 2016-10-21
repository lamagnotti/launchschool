class SumOfMultiples

  # Allow for various amounts of arguments
  def initialize(*number)
    @number = number
  end

  # Default the numbers to 3 and 5
  def self.to(upto, number = [3, 5])
    sum = []
    number.each do |num|
      temp = num
      while num < upto
        sum << num
        num += temp
      end
    end
    answer = sum.uniq.reduce(&:+)
    answer ? answer : 0
  end

  def to(upto)
    self.class.to(upto, @number)
  end
end

# Test Case
# p SumOfMultiples.to(10) # => 3
p SumOfMultiples.new(5, 6, 8).to(150) # => 4419
