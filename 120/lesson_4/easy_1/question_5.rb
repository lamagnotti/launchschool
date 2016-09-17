class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

pizza1 = Pizza.new("cheese")
orange = Fruit.new("Apple")

# To check and see if any of these objects have instance variables
p pizza1.instance_variables
p orange.instance_variables
