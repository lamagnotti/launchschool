class KrispyKreme
  attr_reader :filling_type, :glazing

  def initialize(filling_type, glazing)
    @filling_type = filling_type
    @glazing = glazing
  end

  def to_s
    fill_string = filling_type ? filling_type : "Plain"
    glaze_string = glazing ? " with #{glazing}" : ''
    fill_string + glaze_string
  end
end

donut2 = KrispyKreme.new("Vanilla", nil)
puts donut2 # => "Vanilla"

donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
puts donut4 # => "Plain with chocolate sprinkles"
