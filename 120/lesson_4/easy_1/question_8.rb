class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end

tom = Cat.new(5)
p tom.make_one_year_older


# You can see in the make_one_year_older method we have used self.
# What does self refer to here?

# self is referencing the object that called the method, the calling object (tom)
