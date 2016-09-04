# Ruby OOP Notes Intro

### Encapsulation
- Hiding pieces of functionality and making it unavailable to the rest of the code base
- A form of data protection (data cannot be changed without intention)

### Polymorphism
- The ability for data to be represented as many different types. Poly means many, and morph means forms.

### Inheritance
- Used where a class inherits the behaviors of another class -> superclass
- Its purpose is to define basic classes with large reusability and smaller subclasses for more detailed behaviors

### OBJECTS

- “Everything is an object in Ruby”
- Objects are created from classes
- Classes are like molds and objects as the things you produce out of those molds
- Individual objects will contain different information from other objects, yet are instances of the same class

### CLASSES

- You can think of classes as basic outlines of what an object should be made of and what it should be able to do
- To define a class, instead of using def we use class and CamelCase the name
- Ex.
```
class GoodDog
end

sparkey = GoodDog.new
```
- In the example above, created an instance of our GoodDog class and stored it in a variable sparky. We now have an object.
- Sparky is now an object (or instance of class GoodDog)
- The entire workflow of creating a new object or instance from a class is called instantiation

### MODULES

- A module is a collection of behaviors that is useable in other classes via mixins
- A module is “mixed in” to a class using the include keyword

- It’s as if we copy-pasted the speak method into the GoodDog class
- GoodDog now has access to the speak method

### Exercises Set 1
1)  How do we create an object in Ruby?
- We create an object by defining a class and instantiating it by using the .new method to create an instance (also known as an object)
```
class MyClass
end

my_obj = MyClass.new
```

2)  What is a module, and what is its purpose? How do we use them in our classes?
- A module allows us to group reusable code into one place
- We use modules in our classes by using the include keyword, followed by the module name. Modules are also used as a namespace
