class WorkoutActivitiesController < ApplicationController
  before_action :set_workout_activity, only: [:show, :edit, :update, :destroy]

  # GET /workout_activities
  # GET /workout_activities.json
  def index
    @workout_activities = WorkoutActivity.all
  end

  # GET /workout_activities/1
  # GET /workout_activities/1.json
  def show
  end

  # GET /workout_activities/new
  def new
    @workout_activity = WorkoutActivity.new
    @activities = Activity.all
  end

  # GET /workout_activities/1/edit
  def edit
  end

  # POST /workout_activities
  # POST /workout_activities.json
  def create
    @workout_activity = WorkoutActivity.new(workout_activity_params)

    respond_to do |format|
      if @workout_activity.save
        format.html { redirect_to @workout_activity, notice: 'Workout activity was successfully created.' }
        format.json { render :show, status: :created, location: @workout_activity }
      else
        format.html { render :new }
        format.json { render json: @workout_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workout_activities/1
  # PATCH/PUT /workout_activities/1.json
  def update
    respond_to do |format|
      if @workout_activity.update(workout_activity_params)
        format.html { redirect_to @workout_activity, notice: 'Workout activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @workout_activity }
      else
        format.html { render :edit }
        format.json { render json: @workout_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_activities/1
  # DELETE /workout_activities/1.json
  def destroy
    @workout_activity.destroy
    respond_to do |format|
      format.html { redirect_to workout_activities_url, notice: 'Workout activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout_activity
      @workout_activity = WorkoutActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_activity_params
      params[:workout_activity]
    end
end
