### Built in reduce method

```
[1, 2, 3].reduce(10) do |acc, num|
  acc + num
end

# => 16
```

***

### Building reduce method from scratch

```
def reduce(array, default=0)
  counter = 0
  accumulator = default

  while counter < array.size
    accumulator = yield(accumulator, array[counter])
    counter += 1
  end

  accumulator
end

array = [1, 2, 3, 4, 5]

reduce(array) { |acc, num| acc + num }                    # => 15
```
