class Television
  def self.manufacturer
    puts "Sony"
  end

  def model
    puts "FlatScreen"
  end
end

class S

tv = Television.new

# If you try and call tv.manufacturer you get an undefined method error, because
# tv is an instance (object) of the Television class, and manufacturer is a class method,
# which can only be called on the class itself
# tv.manufacturer
# tv.model

Television.manufacturer

