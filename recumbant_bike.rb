require './bicycle.rb'
class RecumbantBike < Bicycle
  attr_reader :size, :flag
  def post_initialize(args)
    @size = args[:size]
    @flag = args[:flag]
  end

  def local_spares
    { flag: flag }
  end

  def default_chain
    "9 speed"
  end

  def default_tire_size
    "thin"
  end
end

bike = RecumbantBike.new(size: 27, flag: "red")
puts bike.spares.to_s
puts bike.to_s
puts bike.color