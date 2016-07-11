def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def number_result
  loop do
    puts "PLease enter a positive or negative integer:"
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts "Invalid input. Only non-zero integers are allowed."
  end
end

num_one = nil
num_two = nil

loop do
  num_one = number_result
  num_two = number_result
  break if num_one * num_two < 0
  puts "Sorry. One must be + and one -."
  puts "Please try again!"
end

sum = num_one + num_two
puts "#{num_one} + #{num_two} = #{sum}"
