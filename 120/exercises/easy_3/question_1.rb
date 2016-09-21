class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# What happens?

# 1.
# Prints "Hello"
# hello = Hello.new
# hello.hi

# 2.
# Prints undefined method (because Goodbye does not inherit the greet method from Hello)
# hello = Hello.new
# hello.bye

# 3.
# Prints wrong number of arguments (since we never passed in anything to the message arg
# hello = Hello.new
# hello.greet

# 4.
# Prints "Goodbye" because we passed in that string as our argument to the greet method
# hello = Hello.new
# hello.greet("Goodbye")

# 5.
# Prints undefined method 'hi' because the hi method is defined for instances of the Hello class,
# not the class itself. Here, we're attempting to call hi on the Hello class, rather than
# an instance of the class.
# Hello.hi
