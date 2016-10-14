* 149 Ultimate Study Guide *

#-----------------------------------------------------------------------------#
* Instance Variables *

- instance variables can only be used by instance methods!
  - undefined instance variables default to `nil`
- instance variables are used to maintain `state`

#-----------------------------------------------------------------------------#
* Setters and Getters *

- like getter methods, setter methods can be invoked on the object
- use the setter method to rename (for ex. invoke greet on kitty)

  `example`
class Person
  def secret
    @secret
  end

  def secret=(value)
    @secret = value
  end
end

^^this is the same as `attr_reader :secret` and `attr_writer :secret`

#-----------------------------------------------------------------------------#
* Accessors *

- to access an objects instance variables from outside the object, we need to invoke an accessor method.
- `attr_writer` doesnt do anything but assign a value directly to an instance variable
- when you call @mileage, the instance variable directly, you bypass the setter method entirely

#-----------------------------------------------------------------------------#
* Hierarchy *

- call .ancestors to see the lookup path
- when a module a is included in a class, the class is searched first
  - but, the module is searched before the superclass
  ex. 1) Bird (class)
      2) Flyable (module)
      3) Animal (superclass)

- basic lookup path
  -

#-----------------------------------------------------------------------------#
* Namespacing *

- Where similar classes are grouped within a module.
- It makes it easier to recognize the purpose of the contained classes
- grouping classes in a module can also help avoid collision with classes of the same name

- ex.
  module Transportation
    class Vehicle
    end

    class Truck < Vehicle
    end

    class Car < Vehicle
    end
  end
  # instantiate a class contained in a module by invoking:
  Transportation::Truck.new

#-----------------------------------------------------------------------------#
* Modules *

- Useful for organizing similar methods that may be relevant to multiple classes
- When you mix a module into a class, you allow the class to invoke the contained methods
- Give us the ability to include them in specific classes

#-----------------------------------------------------------------------------#
* Super *

- allows you to override a method, but still have access to functionality from a superclass
- super calls a method that has the SAME NAME as the enclosing method from a class superclass
- when you invoke `super`, ruby looks in the inheritance hierarchy for a method with the SAME NAME
- you can pass in specified arguments to `super`
  - def method(year, bed_type)
      super(year)
      @bed_type = bed_type
    end
- if you dont want to pass in an argument, you can invoke `super` with empty parantheses, which means no args passed (super())

#-----------------------------------------------------------------------------#
* Class Methods *

- when defining a CM, the method name begins with self
- self.generic_greeting == Class.generic_greeting
  - self refers to the Cat class
- to call Class methods, they must be called on the class itself, not an instance (object) of the class

#-----------------------------------------------------------------------------#
* Class Variables *

- used when data needs to be handled by the class itself, instead of instances of a class
- preprended by @@

#-----------------------------------------------------------------------------#
* Self *

- when invoking setter methods, they must be denoted with `self`
- we are required to use `self` so that Ruby knows the difference between intializing a local variable and invoking a setter method
- `self` refers to the calling object!
  - if you have an object named 'kitty', invoking `self` is the same as invoking `kitty`

#-----------------------------------------------------------------------------#
* Public, Protected, Private Methods *

- All methods are public by default in Ruby (can be accessed from both within the class and outside the class)
- Private methods means they can only be invoked from within the class
    - cannot be invoked outside the class
    - ONLY THE CLASS can access it (NOT instances of the class)
- Protected methods allow access within the class, but not outside (like private)
    - ALL instances of the class have access to it (which means we can share sensitive data between instances of the same class type)

#-----------------------------------------------------------------------------#
* Random *

- calling .clone on @name, returns a copy of @name instead of a reference to it
- methods in modules should be not be definding with `self`
- to compare objects, use the `Comparable` mixing and define a method with `<=>`

# instance method
- def fast
    @speed += 10
  end

# class method
- def self.slow
    @speed -= 10
  end
