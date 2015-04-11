class Activity < ActiveRecord::Base
  # belongs_to :workouts

  has_and_belongs_to_many :workouts
end
