require 'pry'
require './schedulable.rb'
class Bicycle
  include Schedulable

  attr_reader :color, :chain, :tire_size
  def initialize(args = {})
    @color = args[:color] || default_color
    @chain = args[:chain] || default_chain
    @tire_size = args[:tire_size] || default_tire_size
    post_initialize(args)
  end

  def spares
    { tire_size: tire_size, chain: chain }.merge(local_spares)
  end

  def default_chain
    "10 speed"
  end

  def default_tire_size
    raise NotImplementedError
  end

  def default_color
    nil
  end

  def post_initialize(args)
    nil
  end

  def local_spares
    {}
  end

  def lead_days
    1
  end
end

