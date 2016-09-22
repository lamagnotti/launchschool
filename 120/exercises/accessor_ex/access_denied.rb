class Person
  attr_reader :phone_number

  def initialize(number)
    @phone_number = number
  end
end

person1 = Person.new(1234567899)
puts person1.phone_number

person1.phone_number = 9987654321
puts person1.phone_number

# We want to ensure that phone_number can only be changed inside the class,
# not outside the class. So we need to change attr_accessor to attr_reader
