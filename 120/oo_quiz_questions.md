# Object Oriented Study Questions Ruby

1) What is a class?
- A blueprint for making objects (a cookie cutter = class / the cookie = object)

2) Things an object KNOWS about itself are called:
- Instance variables (state)
- ex. (name, age, height)

3) Things an object DOES are called:
- Instance methods (behavior)
- ex. (talk, move, jump)

4) Think of ______ as another way of saying _______.
- 'instance' 'object'

5) Instance variables are variables that ___________. They represent the object's _______.
   - belong to one object
   - represent the 'state' (its data)
   Instance methods are methods that ____________. They represent the object's ________.
   - you call directly on that object
   - represent the 'behavior'
   - have access to the object's instance variables and change their behavior based
     on the values in those variables

6) Describe each parts
  - Class name
  class Cat
    - Instance method
    def jump
      puts "Jump!"
    end
    - Another instance method
    def move(destination)
      puts "Running to the #{destination)."
    end
  end

7) Call a new instance of the Dog class and assign to a variable.
  -  fido = Dog.new
  -  By calling #new on our Dog class, it returns a new (object) of the class
  - Once we have our object, we can call their instance methods
  - fido.talk

8) What is encapsulation?
-  Hiding pieces of functionality and making it unavailable to the rest of the code base

9) Why use accessor methods?
-  To protect instances (objects) from invalid data since you can't access or change instance
   variables from outside the class

10) What are the two kinds of attribute methods?
  - attribute writers (setter)
  - attribute readers (getter)

11) Write the methods that these define:
    attr_writer :name
    def name=(new_value)
      @name = new_value
    end

    attr_reader :name
    def name
      @name
    end

    # Defines 2 methods at once
    attr_accessor :name
    def name=(new_value)
      @name = new_value
    end

    def name
      @name
    end

12) How many methods does this define?
  - attr_accessor :name, :age
  4

13) Symbols can change: T or F
  - false

14) I stay within an object instance, and store data about that object
  - instance variable

15) I'm another name for a piece of data about an object. I get stored in an instance variable
  - attribute

16) I store data within a method. As soon as the method returns, I disappear.
  - local variable

17) I'm a kind of instance method. My pain purpose is to read or write an instance variable.
  - accessor method

18) I'm used in Ruby programs to refer to things who names don't change.
  - symbol

19) Method definitions that appear within a class definition are treated as ____ _____ for that class?
  - Instance methods

20) Outside of a class, instance variables can only be accessed via _____ _________.
   - Accessor methods

21) What's a shortcut for defining accessor methods?
  - attr_reader, attr_writer, attr_accessor

22) ________ methods can be used to ensure data is valid before it's store in ______ ________.
  - accessor
  - instance variables

23) The class with the common methods is called a ______ ______
  - superclass

24) The classes that inherit those methods are known as _____ ______.
  - subclasses

25) Instance variables can be accessed by:
  - any instance methods in a class and used to maintain the "state"

26) Class methods do not have access to ________ _________.
  - Instance variables
  - Undefinded instance variables default to `nil`
  @age is only available to the instance methods, not class methods

27) T or F: Local variables must be assigned to a value unlike instance variables
    who default to nil
  - true

28) What does this operator do? ||=
  - "Or-equal operator", useful for caching values in instance variables and preventing
    code from running when values have already been calculated

29) T or F: Constants are NOT accessible by instance methods or class methods.
  - false
  - You CAN access constants by instance methods and class methods.

30) What is this convention? Person::Age
  - Namespacing

31) What do we namespace constants for?
  - To allow us to access the constant outside of the class

32) What method is automatically run whenever an object is instantiated?
  - initialize

33) Modules are useful for:
  - organizing code and for code that can be reused in multiple classes

34) Unlike classes, Modules cannot ________.
  - be instantiated (used to create objects)

36) The _______ method demonstrates all the classes that a class inherits from.
  - ancestors

37) What kind of method is ::new?
  - Class method (meaning you can call it on a class)

38) What is a protected method?
  - Proteched methods allow access between class instances, while private methods don't. You can access the methods within the class, just not outside of the class.
