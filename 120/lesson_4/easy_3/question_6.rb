class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    # self is referencing the setter method provided by attr_accessor, so we could
    # just call the setter method by using @
    #self.age += 1
    @age += 1
  end
end


kitty = Cat.new("siamese")
p kitty.make_one_year_older
p kitty.make_one_year_older
