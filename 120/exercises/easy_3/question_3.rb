class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

joe = AngryCat.new(5, "Joe")
kit = AngryCat.new(8, "Kit")

joe.name
kit.name
