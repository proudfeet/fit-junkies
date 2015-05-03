class WorkoutActivity < ActiveRecord::Base
  # has_many :workouts, through: :workout_activities
  # has_many :activities, through: :workout_activities
  belongs_to :workout
  belongs_to :activity
  validates :workout, presence: true
  validates :activity, presence: true
  validates :sets, numericality: {allow_blank: true}
  validates :reps, numericality: {allow_blank: true}
  validates :weight, numericality: {allow_blank: true}
  validates :distance, numericality: {allow_blank: true}
  validates :time, numericality: {allow_blank: true}

  def getActivityName
  	Activity.find(self.activity_id).name
  end

  # if you call an activity on a workout it will proxy name to the activity
  delegate :name, to: :activity
end