class WorkoutLogsController < ApplicationController
  before_action :set_workout_log, only: [:show, :edit, :update, :destroy]

  # GET /workout_logs
  # GET /workout_logs.json
  def index
    if WorkoutLog.where(user_id: current_user)
      @workout_logs = WorkoutLog.where(user_id: current_user).all
    end
  end

  # GET /workout_logs/1
  # GET /workout_logs/1.json
  def show
  end

  # GET /workout_logs/new
  def new
    @workout_log = WorkoutLog.new(user_id: current_user.id)
    @workouts = Workout.all
  end

  # GET /workout_logs/1/edit
  def edit
    @workouts = WorkoutLog.where(user_id: current_user.id).all
    # raise 'hell'
  end

  # POST /workout_logs
  # POST /workout_logs.json
  def create
    @workout_log = WorkoutLog.new(workout_id: params[:workout_log][:workout_id], user_id: current_user.id)

    respond_to do |format|
      if @workout_log.save
        format.html { redirect_to @workout_log, notice: "Great! We've logged your workout for you!" }
        format.json { render :show, status: :created, location: @workout_log }
      else
        format.html { render :new }
        format.json { render json: @workout_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workout_logs/1
  # PATCH/PUT /workout_logs/1.json
  def update
    respond_to do |format|
      if @workout_log.update(workout_log_params)
        format.html { redirect_to @workout_log, notice: 'Workout log was successfully updated.' }
        format.json { render :show, status: :ok, location: @workout_log }
      else
        format.html { render :edit }
        format.json { render json: @workout_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_logs/1
  # DELETE /workout_logs/1.json
  def destroy
    @workout_log.destroy
    respond_to do |format|
      format.html { redirect_to workout_logs_url, notice: 'Workout log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout_log
      @workout_log = WorkoutLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_log_params
      params[:workout_log]
    end
end
