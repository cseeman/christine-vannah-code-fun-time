class Schedule


  # scheduled?(schedulable, starting, ending)
  # add(schedulable, starting, ending)
  # remove(schedulable, starting, ending)
  # schedulable?(schedulable, starting, ending)


  def scheduled?(schedulable, start_date, end_date)
    puts "This #{schedulable.class} " +
      "is not scheduled\n" +
      " between #{start_date} and #{end_date}"
    false
  end
end