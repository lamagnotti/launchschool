### Built in each method

```
[1, 2, 3].each do |num|
  puts num + 1
end

# => outputs 2, 3, 4, returns [1, 2, 3]
```

The `each` returns the calling object. In this case it's `[1, 2, 3]`.
This is so developers can chain methods together

***

### Each method from scratch

```
def each(array)
  counter = 0

  while counter < array.size
    yield(array[counter])
    counter += 1
  end

  array
end

each([1, 2, 3, 4, 5]) do |num|
  puts num
end

# 1
# 2
# 3
# 4
# 5
# => [1, 2, 3, 4, 5]
```

- Our `each` method returns the arg at the end
- On each iteration within the while loop, execution then goes to the block
- Then the counter is incremented and the while loop continues and the next element is yielded to the block
