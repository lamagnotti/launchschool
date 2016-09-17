module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

litte_car = Car.new
litte_car.go_fast

# Since #self refers to the object itself, the object is either Car or Truck.
# When we call #class on #self, it tells us it's class type
# Since we're using string interpolation, to_s is already being called for us
