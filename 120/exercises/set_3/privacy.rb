class Machine
  def initialze
    stop
  end

  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  def status
    puts switch == :on ? "The light is on!" : "The light is off!"
  end

  private

  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

big = Machine.new
big.status # => "The light is off!"
big.start
big.status # => "The light is on!"
