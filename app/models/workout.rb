class Workout < ActiveRecord::Base
  has_many :activities, through: :workout_activities
  accepts_nested_attributes_for :activities
  # has_many :workout_activities
end
