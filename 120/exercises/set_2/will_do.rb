class Something
  def initialize
    @data = 'Hello'
  end

  # instance method
  def dupdata
    @data + @data
  end

  # class method
  def self.dupdata
    'ByeBye'
  end
end

thing = Something.new
puts Something.dupdata # => 'ByeBye'
puts thing.dupdata     # => 'HelloHello'
