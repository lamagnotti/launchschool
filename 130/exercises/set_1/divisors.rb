def divisors(int)
  1.upto(int).select do |number|
    int % number == 0
  end
end


p divisors(12) == [1, 2, 3, 4, 6, 12]
