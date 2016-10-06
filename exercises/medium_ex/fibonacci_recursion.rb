# A recursive method is one in which the method calls itself
# Example

# def sum(n)
#   return 1 if n == 1
#   n + sum(n -1)
# end

# A good recursive method has 3 main qualities:
# 1) It calls itself at least once
# 2) It has an ending condition
# 3) The results of each recursion are used in each step

# Problem

# Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method

def fibonacci(num)
  return 1 if num == 1
  return 1 if num == 2
  fibonacci(num - 1) + fibonacci(num - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
