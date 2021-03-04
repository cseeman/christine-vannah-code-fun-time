class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(chainring, cog, wheel = nil)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def ratio
    chainring/cog.to_f
  end

  def gear_inches
    ratio*wheel.diameter
  end
end


require "./wheel.rb"
@wheel = Wheel.new(26, 1.5)
@gear = Gear.new(52, 11, @wheel)
puts @gear.gear_inches