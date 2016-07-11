PASSWORD = "POKEMONGO"
NAME = "Louis"
HACK = "yellow"

loop do
  puts "Please enter user name:"
  name = gets.chomp

  break if name == HACK
  puts "Please enter your password:"
  password = gets.chomp

  if (password == PASSWORD && name == NAME)
    puts "Correct! Welcome!"
    break
  else
    puts "Authorization failed!"
  end
end


