require './bicycle.rb'
class MountainBike < Bicycle
  attr_reader :front_shock, :back_shock
  def post_initialize(args)
    @front_shock = args[:front_shock]
    @back_shock = args[:back_shock]
  end

  def local_spares
    { back_shock: back_shock }
  end

  def default_tire_size
    "fat"
  end
end

mountain_bike = MountainBike.new(color: "red", back_shock: 35)
puts mountain_bike.spares.to_s