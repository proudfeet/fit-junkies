class Workout < ActiveRecord::Base
  has_many :activities, through: :workout_activities
  has_many :workout_activities, :inverse_of => :workout
  accepts_nested_attributes_for :workout_activities, :reject_if => lambda { |b| b[:activity_id].blank? }
  validates :workout_name, presence: true
  has_many :workout_logs

  def getWorkoutActivities
  	WorkoutActivity.where(workout_id: self.id)
  end

end
