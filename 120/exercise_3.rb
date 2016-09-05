module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  @@number_of_vehicles = 0

  attr_accessor :color
  attr_reader :year
  attr_reader :model

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def self.number_of_vehicles
    puts "There are #{@@number_of_vehicles} vehicles in the car lot."
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph"
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph"
  end

  def current_speed
    puts "You are now going #{@current_speed} mph"
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  def spray_paint(color)
    self.color = color
  end

  private

  def years_old
    Time.now.year - self.year.to_i
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
  def to_s
    "My car is a #{color}, #{year}, #{model}!"
  end
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2
  def to_s
    "My truck is a #{color}, #{year}, #{model}!"
  end
end

car = MyCar.new('2015', 'Tesla Model X', 'White')
puts car.age
truck = MyTruck.new('2011', 'Ford F150', 'Red')
puts truck.age

#Vehicle.number_of_vehicles
#puts truck.can_tow?(4000)
# puts "---MyCar method lookup---"
# puts MyCar.ancestors
# puts "---MyTruck method lookup---"
# puts MyTruck.ancestors
# puts "---Vehicle method lookup---"
# puts Vehicle.ancestors
