class Activity < ActiveRecord::Base
  belongs_to :workout #each activity only belongs to one workout?
end
