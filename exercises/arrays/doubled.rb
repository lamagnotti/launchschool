numbers = [1, 2, 3, 4, 5]

doubled_numbers = []
numbers.map do |num|
  doubled_numbers << num * 2
end

p doubled_numbers
