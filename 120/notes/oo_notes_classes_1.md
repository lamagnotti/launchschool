# Ruby OOP – Classes and Objects Part 1

- When defining a class, we typically focus on two things: states and behaviors
- States track attributes for individual objects
- Behaviors are what objects are capable of doing

### States
- If we create two GoodDog objects: one named “Fido” and one “Sparky”, they’re both GoodDog objects, but may contain different info: ie. Name, weight, height, etc. (We use instance variables to track this info)
- Instance variables are scoped at the object (or instance) level and how objects keep track of their states

### Behaviors
- Even though “Fido” and “Sparky” are two different objects, both are still instances of class GoodDog and contain identical behaviors
- Both GoodDog objects should be able to bark, run, fetch, etc
- We define these ^ behaviors as instance methods in a class
- Instance methods defined in a class are available to objects of that class

### Instance Variables
- It is a variable that exists as long as the object instance exists and it is one of the ways we tie data to objects

1)  The string “Sparky” is being passed from the new method through to the initialize method
2)  Next we set the instance variable @name to name, which then assigns the string “Sparky” to the @name instance variable
3) The name of the sparky object is the string “Sparky”
4) The state of the object is tracked in the instance variable, @name
5) Instance variables are responsible for keeping track of information about the state of an object

### Instance Methods

- If we put ‘puts sparky.speak’ # => Arf!
- We can call fido = GoodDog.new(“Fido”) which can also perform GoodDog behaviors
- All objects of the same class have the same behaviors though they contain different states, here the differing state is the name

### Accessor Methods

- attr_accessor :name
  - The attr_accessor method takes a symbol as an argument
  - It uses that symbol to create the method name for the getter
and setter methods. That one line replaced 2 method definitions (get and set)
- attr_reader :name
  - This only allows you to retrieve the instance variable getter
- Attr_writer :name
  - Setter
- attr_accessor :name, :height, :weight
  - This gives us six getter/setter instance methods: name, name=, height, height=, weight, weight=. And gives us 3 instance variables. @name, @height, @weight
