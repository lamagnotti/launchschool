# Ruby OOP – Classes and Objects Part 2

- Instance methods
  - methods that pertain to an instance or object of the class
- Class methods
  - methods that we can call directly onto the class itself without having to instantiate any objects.
- Initialize is an instance method
- Everytime that initialize gets called, we instantiate a new object via the `new` method

### Class methods
- Define a class method with .self
```
class Welcome
  def self.greeting
    "Hello, thanks for coming"
  end
end

Welcome.greeting # => Hello, thanks for coming!
```

### Class Variables
- Created using two @ symbols : @@
- They are variables for an entire class
- `@@number_of_dogs = 0`

### Constants
- Variables that you never want to change
- Usually in all caps ex. `CONSTANT = 7`

### to_s
- `to_s` is automatically called by puts
  - puts sparky is == puts sparky.to_s
- It's also automatically called in string interpolation
- On the example below, it's called on the `arr` array object
```
arr = [1, 2, 3]
"This is your array => #{arr}"
```

### Self
- We use `self` when calling setter methods from within the class
  - We had to use to disambiguate between intializing a local variable and calling a setter method
- We use `self` for method definitions
-Within a class:
  - `self` inside of an instance method, references the instance (object) that called the method - the calling object
    - `self.weight=' is the same as `sparky.weight=`
  - 'self' outside of an instance method, references the class and can be used to define class methods
    - `def self.name=(n)` is the same as `def GoodDog.name=(n)`
- `self` is a way of being explicit about what our program is referencing; it changes depending on the scope it's defined in
