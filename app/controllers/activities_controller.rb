class ActivitiesController < ApplicationController
  def index
  	@activities = Activity.all
    raise 'hell'
  end

  def new
  	@activity = Activity.new
  end

  def create
  	@activity = Activity.new(activity_params)
  	if @activity.save
  		redirect_to '/activities'
  	else
  		render 'new'
  	end
  end

  def activity_params
  	params.require(:activity).permit(:name, :sets, :repetition, :other)
  end

  def edit
  	@activity = Activity.find(params[:id])
  	render 'new'
  end

  def update
  	@activity = Activity.find(params[:id])
  	@activity.update(activity_params)
  	redirect_to '/activities'
  end
end