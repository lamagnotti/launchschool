class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    "I want to turn on the light with a brightness level of  and a color of green"
  end

  def information
    "I want to turn on the light with a brightness level of #{brightness} and a color of #{color}"
  end
end

kitchen = Light.new('Really bright', 'Clear')
p kitchen.brightness = "Dark"
p kitchen.information

