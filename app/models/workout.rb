class Workout < ActiveRecord::Base
  has_many :activities
  accepts_nested_attributes_for :activities
end
