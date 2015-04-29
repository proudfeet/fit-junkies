class Workout < ActiveRecord::Base
  has_many :activities, through: :workout_activities
  has_many :workout_activities
  accepts_nested_attributes_for :workout_activities, :reject_if => lambda { |b| b[:activity_id].blank? }
  validates :name, presence: true
  belongs_to :workout_log

  def getWorkoutActivities
  	WorkoutActivity.where(workout_id: self.id)
  end

end
