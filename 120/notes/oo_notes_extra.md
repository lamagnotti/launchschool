# Ruby OOP Notes Extra

### Objects
- The object's state is saved in an object's instance variables
- Instance methods can operate on the instance variables
- a Class object's first_name can be saved into a @first_name instance var as a string
- @first_name can hold any object (i.e. String, Hash, Array, or any other data structure)

### Modules
- A class can only sub-class from one super class, so we mixin modules to get around that
- Modules are a way of supporting multiple inheritance
- You can mix in as many modules as you'd like
- When we `include` a module, it's like we're copying and pasting the methods right in
- Remember, modules do affect the loop up path

```
module Run
  def run
    "I'm going for a run this evening."
  end
end

class Jack
  include run
end
```
