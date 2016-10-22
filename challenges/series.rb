class Series
  def initialize(string)
    @string = string.split('').map(&:to_i)
  end

  def slices(num)
    raise ArgumentError.new("Slice is longer than input.") if num > @string.length
    @string.each_cons(num).to_a
  end
end

series = Series.new('01234')
p series.slices(2) # => [[0, 1], [1, 2], [2, 3], [3, 4]]
