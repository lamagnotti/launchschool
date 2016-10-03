### Built in times method

```
5.times do |num|
  puts num
end

Outputs 0, 1, 2, 3, 4 => 5 (returns the calling object)
```

***

### Times method from scratch

```
def times(number)
  counter = 0
  while counter < number do
    yield(counter)
    counter += 1
  end

  number  # return the original method argument to match behavior of `Integer#times`
end

times(5) do |num|
  puts num
end

Outputs 0, 1, 2, 3, 4 => 5 (returns the calling object)

```

Execution flow:

1) Method invocation - `times` method called with an arg of `5` and a block of code
2) Method implementation - local var `counter` is initialized
3) `while` loop evaluated - 1st time through, condition = true
4) Yield to the block - the arg to the block is `counter` which is `0` on the first iteration through
5) Set `counter` to the block local var `num`
6) Output the block local var `num` (which is 0 on the 1st pass)
7) Exits the block, returns back to the times method implementation, where `counter` is incremented by `1`
8) `while` loop continues running, repeating steps 4-7
9) The `while` loop returns false, and allows the execution to flow and return the last expression, the local variable `number`
