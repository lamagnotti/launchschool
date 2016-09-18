class Cat
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def display
    puts "I am a #{type} cat"
  end
end

tabby = Cat.new('tabby')
tabby.display
