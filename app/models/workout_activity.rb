class WorkoutActivity < ActiveRecord::Base
  has_many :workouts, through :workout_activities
  has_many :activities, through :workout_activities
end
