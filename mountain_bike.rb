require './bicycle.rb'
class MountainBike < Bicycle
  attr_reader :front_shock, :back_shock
  def initialize(args)
    @front_shock = args[:front_shock]
    @back_shock = args[:back_shock]
    super(args)
  end

  def spares
    super.merge(back_shock: back_shock)
  end
end

mountain_bike = MountainBike.new(color: "red", back_shock: 35)
puts mountain_bike.spares.to_s