loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer.start_with?('y')
end
