stoplight = ['green', 'yellow', 'red'].sample

case stoplight
  when 'green'
    puts "GO!"
  when 'yellow'
    puts "Slow down!"
  else 'red'
    puts "STOP!"
end
