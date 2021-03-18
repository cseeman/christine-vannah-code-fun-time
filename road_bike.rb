require './bicycle.rb'
class RoadBike < Bicycle
  attr_reader :size
  def initialize(args)
    @size = args[:size]
    super(args)
  end

  def spares
    super.merge(chain_speed: 10, tire_size_inches: 23)
  end
end

bike = RoadBike.new(size: 27, color: "red")
puts bike.spares.to_s
puts bike.to_s
puts bike.color