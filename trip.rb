class Trip
  attr_reader :bicycles, :customer, :vehicle
   def prepares(preppers)
    preppers.each do |prepper|
      prepper.prep_trip(self)
    end
   end
end