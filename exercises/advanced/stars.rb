# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method. The smallest such star you need to handle is a 7x7 grid.

def display(grid_size, distance_from_center)
  num_spaces = distance_from_center - 1
  spaces = ' ' * num_spaces
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

def star(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(1) { |distance| display(grid_size, distance) }
  puts '*' * grid_size
  1.upto(max_distance) { |distance| display(grid_size, distance) }
end

star(25)
