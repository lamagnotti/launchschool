# Ruby OOP – Inheritance

- Inheritance is when a class inherits behavior from another class
  - The class that inherits behavior is called a subclass
    - And the class it inherits from is called a superclass

### Class Inheritance

```
class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
end

class Cat < Animal
end

spot = GoodDog.new
claw = Cat.new
puts spot.speak # => Hello!
puts claw.speak # => Hello!
```
- The `<` symbol signifies that the `GoodDog` class is inheriting from the `Animal` class
  - This means that all of the methods that are in the `Animal` class are available to the GoodDog class
- Ruby checks the object's class first for the method before it looks in the superclass
  - If you have a `speak` method in the `class Animal`, and a `speak` method in `class GoodDog`, it will use the `speak` method from the `GoodDog` class first, overriding the `speak` method in `Animal`
- DRY = "Don't Repeat Yourself"

### super
- it will search the inheritance hierarchy for a method by the same name and then invoke it

### Modules
- Useful to group common behaviors together in order to build a more powerful and DRY codebase
- Can you as many modules as you'd like
- We mix in that module using the `include` keyword
```
module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Dog < Mammal
  inclue Swimmable  # mixing in Swimmable module
end
```
- Modules are used only for namespacing and grouping common methods together; you can't instantiate modules
  - namespacing means organizing similar classes under a module (use modules to group related classes)
  - we call classes in a module by appending the class name to the module name with two colons ::
    - `buddy = Mammal::Dog.new`
- We also use modules to act as a container for methods, called module methods
  - here we use modules to house other methods (or methods that seem out of place with your code)
  ```
  module Mammal
  ...

    def self.some_out_of_place_method(num)
      num ** 2
    end
  end

  # Method Call
  value = Mammal.some_out_of_place_method(4)
  ```

### Private, Protected, and Public
- public methods
  - a method available to anyone who knows either the class name or the object's name
- private methods
  - methods that are useful in the class but don't need to be available to the whole program
  - once invoked in the code, any code below it is private
- protected methods
  - from outside the class, protected methods act just like private methods
  - from inside the class, protected methods are accessible just like public methods










