# Ruby OOP – self

#### `self` in relation to instance methods

- Inside an instance method, references the object that called the method => the calling object.
  - `self.age=` is the same as `joe.age=`
- Outside an instance method, references the CLASS and can be used to define class methods.
  - `def self.name=(n)` is the same as `def Seniors.name=(n)`

#### Why use `self`?

- to call setter methods from within a class
- for class method definitions
