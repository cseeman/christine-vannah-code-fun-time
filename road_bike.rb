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

require 'date'
starting = Date.parse("2015/09/04")
ending = Date.parse("2015/09/10")
b = RoadBike.new
b.schedulable?(starting, ending)