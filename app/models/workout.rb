class Workout < ActiveRecord::Base
  has_many :activities
  accepts_nested_attributes_for :activities

  # def create
  #   @workout = Workout.new(params[:workout])
  #   @activity = @workout.activities.build(params[:activity])
  #   if @workout.save
  #     redirect_to :action => 'index'
  #   else
  #     render :action => 'new'
  #   end
  # end
end
