class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def identify
    self
  end
end

kitty = Cat.new('Sophie')
p kitty.identify # => #<Cat:0x007f94fc886bf0 @name="Sophie">
p kitty          # => #<Cat:0x007f94fc886bf0 @name="Sophie">

