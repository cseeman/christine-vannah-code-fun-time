require 'pry'
class Bicycle
  attr_reader :color
  def initialize(args)
    @color = args[:color]
  end
  def spares
    { color: color }
  end
end

