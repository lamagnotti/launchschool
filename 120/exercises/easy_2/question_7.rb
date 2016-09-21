class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

# The @@cats_count variable keeps track of how many instances of cat we have created
# Everytime we create a cat using Cat.new("namehere") we are creating a new instance
# of the class Cat.

