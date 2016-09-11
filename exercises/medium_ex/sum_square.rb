def sum_square_difference(num)
  sum = 0
  sum_squares = 0

  (1..num).each do |value|
    sum += value
    sum_squares += value**2
  end

  sum**2 - sum_squares
end


p sum_square_difference(3) == 22
