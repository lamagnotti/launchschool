class Cube
  def initialize(volume)
    @volume = volume
  end

  def get_volume
    @volume
  end
end

cube_me = Cube.new(10000)
p cube_me.get_volume
