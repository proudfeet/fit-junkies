class Activity < ActiveRecord::Base
  belongs_to :workout #each activity only belongs to one workout?
  has_many :workouts, through: :workout_activities
  validates :name, presence: true
end
