def missing(array)
  new_array = []
  first = array.first
  last = array.last

  (first..last).each do |n|
    new_array << n unless array.include?(n)
  end
  new_array
end

# alt solution


def missing(array)
  (array.min..array.max).to_a - array
end



p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
