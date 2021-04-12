require './schedulable.rb'
class Mechanic
  include Schedulable

  def prep_trip(trip)
    prepare_bicycles(trip.bicycle)
  end

  private

  def prepare_bicycles(bicycles)
    bicycles.each { |bicycle| prepare_bicycle(bicycle)}
  end

  def prepare_bicycle(bicycle)
    puts bicycle
  end

  def lead_days
    4
  end
end

require 'date'
starting = Date.parse("2015/09/04")
ending = Date.parse("2015/09/10")
b = Mechanic.new
b.schedulable?(starting, ending)