puts ">> Welcome to the division app! <<"
puts "----------------------------------"

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

top_num = nil
loop do
  puts "Please enter the numerator:"
  top_num = gets.chomp

  break if valid_number?(top_num)
  puts "Invalid input. Only integers are allowed!"
end

bottom_num = nil
loop do
  puts "Please enter the denominator:"
  bottom_num = gets.chomp

  if bottom_num == '0'
    puts "Invalid input. A denominator of 0 is not allowed!"
  else
    break if valid_number?(bottom_num)
    puts "Invalid input. Only integers are allowed."
  end
end

total = top_num.to_i / bottom_num.to_i
puts "Awesome! #{top_num} / #{bottom_num} is #{total}"
