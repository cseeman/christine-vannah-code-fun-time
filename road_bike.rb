require './bicycle.rb'
class RoadBike < Bicycle
  attr_reader :size
  def post_initialize(args)
    @size = args[:size]
  end

  def local_spares
   { tape_color: color }
  end

  def default_tire_size
    "thin"
  end

  def default_color
    "rainbow"
  end
end

bike = RoadBike.new(size: 27)
puts bike.spares.to_s
puts bike.to_s
puts bike.color