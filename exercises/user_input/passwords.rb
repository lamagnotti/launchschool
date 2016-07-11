PASSWORD = "POKEMONGO"

loop do
  puts "Please enter your password:"
  answer = gets.chomp
  if answer == PASSWORD
    puts "Correct! Welcome!"
    break
  else
    puts "Invalid password!"
  end
end


