# Calling Methods with Blocks Notes

***

### Blocks

```
[5, 10, 15].each do |num|
  puts num
end
```

- The `do` through `end` is the actual block.
- The block is an _argument_ to the method call
- In the above example, we're passing in the block of code to the #each method
- When we pass in blocks to the method (like any other param), it's up to the method to decide what to do with the block we passed in

***

### Writing Methods that Take Blocks

- In Ruby, every method can take an optional block an implicit param

```
def say_hello(string)
  string
end

say_hello("Hello!")                  # => "Hello!"
say_hello("Hello!") { puts "world" } # => "Hello"
```
***

### Yield

```
def say_hello_with_yield(string)
  yield
  string
end

say_hello_with_yield("Hello!") { puts "world" }
```

- The method call above, prints out "world" and returns the string "Hello!"
- The # of args at method invocation needs to match the method definition regardless whether we are passing in the block (you can't have 2 arguments if the method only calls for 1)
- the `yield` keyword is what executes the block

***

- If you call `yield` in your code, and don't pass in a block to the method call, you'll be hit with a LocalJumpError.
  - To get around this, and allow calling the method with or without a block, we must wrap the `yield` call in a conditional using `Kernel#block_given?`

```
def say_hello_with_yield(string)
  yield if block_given?
  string
end

say_hello_with_yield("Hello!")                  # => "Hello!"
say_hello_with_yield("Hello!") { puts "world" } # => world
                                                # => "Hello!"
```

- Now we can call `say_hello_with_yield` with or without a block.
- If a block is passed in, `block_given?` will be true, and our code will `yield` to the block
- If a block is NOT passed in, `block_given?` will be false, and our code will return the string `"Hello!"`

***

### Yielding with an argument

```
5.times do |num|
  puts num
end
```

- `5` is the calling object
- `.times` is the method being called
- `do...end` is the block
- the `num` var is the arg to the block
- `num` is the **block local variable**
  - this variable only has scope within this block
  - ensure you you name this variabe good so we don't overshadow
    other variable names
- when you use `nil` in string interpolation, it evalutes to an empty string

***

### When to use blocks in our own methods

- defer some implementation code to method invocation decision
- 2 roles involved with any method:
  1) method implementor
  2) method caller
- **If you encounter a scenario where you're calling a method from multiple places,with one little tweak in each case, it may be a good idea to try implementing the method in a generic way by yielding to a block**

***

### Summary

**Q) What are closures?**
  A) A way to pass around an unnamed piece of code to be executed later

**Q) Ruby implements closures using _______.**
  A) Blocks

**Q) Blocks can take arguments, just like normal methods. But unlike normal methods,
     it won't complain about _____________?**
  A) wrong number of args passed to it

**Q) T or F. Blocks do not return a value like normal methods.**
  A) False - they do return a value

**Q) Blocks are a way to defer some ___________ _________ to method invocation time.**
  A) defer some immplementation decisions

**Q) What can method implementors build that can be used in a variety of ways?**
  A) generic methods

**Q) What's a good example of using blocks for "sandwhich code" scenarios?**
  A) closing a file automatically
