loop do
  number = rand(100)
  puts number

  break if number.between?(1, 10)
end

# loop do
#   number = rand(100)
#   puts number
#   break if (0..10).include?(number)
# end
