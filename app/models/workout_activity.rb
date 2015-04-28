class WorkoutActivity < ActiveRecord::Base
  has_many :workouts, through: :workout_activities
  has_many :activities, through: :workout_activities
  validates :workout_id, presence: true
  validates :activity_id, presence: true
  validates :sets, numericality: true
  validates :reps, numericality: true
  validates :weight, numericality: true
  validates :distance, numericality: true
  validates :time, numericality: true

  def getActivityName
  	Activity.find(self.activity_id).name
  end
end
