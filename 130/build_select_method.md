### Built in select method

```
array = [1, 2, 3, 4, 5]

array.select { |num| num.odd? } # => [1, 3, 5]
array.select { |num| num + 1}   # => [1, 2, 3, 4, 5] bc num + 1 evaluates to true
```

***

### Select method from scratch

```
def select(array)
  counter = 0
  result = []

  while counter < array.size
    current_iteration = (array[counter])
    result << current_iteration if yield(current_iteration)
    counter += 1
  end
  result
end


array = [1, 2, 3, 4, 5]

select(array) { |num| num.odd? }      # => [1, 3, 5]
```
