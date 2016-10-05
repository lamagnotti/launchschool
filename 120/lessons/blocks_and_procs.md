### Closure and Binding

- A block is how Ruby implements the idea of a **closure**
  - a closure is a `piece of code` you can pass around and execute later
- This `piece of code` is represented by a `Proc` object
  - blocks are a kind of `Proc`
- `Procs` keep track of its surrounding context, and drags it around wherever the chunk of code is passed to
  - we call surrounding env/context **binding**

### Procs

- Also referred to `anonymous functions'
- Proc objects are self-contained code sequences that you can create, store, pass around as method args, and then `call` them with the `call` method.
- to create a new proc object, call `Proc.new`

***

- Basic Operation of a `Proc`
  - a code block is supplied to a call to `Proc.new`
  - This code block becomes the body of the `Proc` object
  - The block is then executed once you call that Proc object
    - **Procs are objects**
    - You can assign them to variables, put them in arrays, send them to method args,
   and treat them as you would any other object

###### The `proc` Method
`Proc.new { puts "Hello!" }` is the same as ` proc { puts "Hello!" }`

***

### Transforming Collections

```
[2, 4, 6, 8, 10].map do |num|
  num.to_s
end

# => ["2", "4", "6", "8", "10"]
```

Shortcut version of the above. This iterates through the array, and calls `to_s` on each element, then saves it in a new array.

```
[2, 4, 6, 8, 10].map(&:to_s) # => ["2", "4", "6", "8", "10"]
```

- The `&:` must be followed by a valid method that can be invoked on each element

***

### Symbol to Proc

`(&:to_s)` gets converted to --> `{ |n| n.to_s }`

- When we add a `&` in front of an object, Ruby converts this object to a block
- If Ruby sees the object after `&` is a Proc
  - If it is; Ruby will try to call `to_proc` on the object, returning a `proc` object
  - If it's not; then the `&` will turn the Proc into a block

Example
`(&:to_s)`
1) Ruby will try and turn `:to_s` to a block
2) Since `:to_s" is a symbol (not a Proc), Ruby will call `Symbol#to_proc`
3) This will executve the method and return a proc object
