class Activity < ActiveRecord::Base
  # belongs_to :workout #each activity only belongs to one workout?

  has_many :workout_activities
  has_many :workouts, through: :workout_activities
  validates :name, presence: true, uniqueness: true
end
