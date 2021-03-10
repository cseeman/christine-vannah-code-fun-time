class Mechanic
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
end