class Wheel
  attr_reader :rim, :tire
  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + (tire*2)
  end

  def circumference
    diameter*3.14
  end
end

@wheel = Wheel.new(26, 1.5)
puts @wheel.circumference