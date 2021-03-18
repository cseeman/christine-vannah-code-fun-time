require './bicycle.rb'
class TroubledMountainBike < Bicycle
  attr_reader :front_shock, :back_shock
  def post_initialize(args)
    @front_shock = args[:front_shock]
    @back_shock = args[:back_shock]
  end

  def local_spares
    { back_shock: back_shock }
  end

  def default_tire_size
    "broken"
  end
end

troubled_mountain_bike = TroubledMountainBike.new(color: "red", back_shock: 35)
puts troubled_mountain_bike.spares.to_s
puts troubled_mountain_bike.color
puts troubled_mountain_bike.default_tire_size