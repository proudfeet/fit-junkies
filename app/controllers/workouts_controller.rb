class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]
  # scope_to :current_user

  # GET /workouts
  # GET /workouts.json
  def index
    # @workouts = Workout.current_user.all
    # @workouts = Workout.where(user: => current_user).all
    @workouts = Workout.where(user_id: current_user).all
    # @workouts = current_user.workouts
  end

  # GET /workouts/1
  # GET /workouts/1.json
  def show
    @activities = Activity.all
  end

  # GET /workouts/new
  def new
    @workout = Workout.where(user_id: current_user).new

    @workout.workout_activities.new
    # @workout.activities.build # create a new activity on the workout
  end


  # def create
  #   @workout = Workout.new(params[:workout])
  #   @activity = @workout.activities.build(params[:activity])
  #   if @workout.save
  #     redirect_to :action => 'index'
  #   else
  #     render :action => 'new'
  #   end
  # end

  # GET /workouts/1/edit
  def edit
  end

  # def duplicate
  #   @workout = Workout.clone
  #   @workout.save
  # end

  # POST /workouts
  # POST /workouts.json
  def create
    @workout = Workout.where(user_id: current_user).new(workout_params)
    # binding.pry
    respond_to do |format|
      if @workout.save
        format.html { redirect_to @workout, notice: 'Workout was successfully created.' }
        format.json { render :show, status: :created, location: @workout }
      else
        format.html { render :new }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workouts/1
  # PATCH/PUT /workouts/1.json
  def update
    respond_to do |format|
      if @workout.update(workout_name: workout_params[:workout_name], notes: workout_params[:notes], focus: workout_params[:focus])
        @workout.workout_activities.each_with_index do |activity, index|
          @workout.workout_activities[index].update(workout_params[:workout_activities_attributes][index.to_s])
        end 
        format.html { redirect_to @workout, notice: 'Workout was successfully updated.' }
        format.json { render :show, status: :ok, location: @workout }
      else
        format.html { render :edit }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workouts/1
  # DELETE /workouts/1.json
  def destroy
    @workout.where(user_id: current_user).destroy
    respond_to do |format|
      format.html { redirect_to workouts_url, notice: 'Workout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = Workout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_params
      params.require(:workout).permit(:workout_name, :notes, :workout_activities_attributes => [ :sets, :reps, :weight, :distance, :time, :activity_id])
    end
end
