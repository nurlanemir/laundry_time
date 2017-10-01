class LaundryRoom < ApplicationRecord
  acts_as_bookable time_type: :fixed,
                   capacity_type: :closed

  before_validation :add_schedule

  def add_schedule
<<<<<<< HEAD
    self.schedule = IceCube::Schedule.new(Time.now.in_time_zone(Time.zone))
    self.schedule.add_recurrence_rule IceCube::Rule.daily.hour_of_day(8, 13)
=======
    self.schedule = IceCube::Schedule.new(Time.now.in_time_zone(Time.zone).beginning_of_day)
    self.schedule.add_recurrence_rule IceCube::Rule.daily.hour_of_day(8,13)
>>>>>>> a1636826a59202b9c7d3ac5613bdca98fd476742
  end


  def start_time
    self.schedule.next_occurrence
  end
end

