class WorkoutActivity < ActiveRecord::Base
  has_many :workouts, through: :workout_activities
  has_many :activities, through: :workout_activities

  def getActivityName
  	Activity.find(self.activity_id).name
  end
end
