class RemoveSetsAndRepetitionAndDistanceAndTimeAndWorkoutIdFromActivities < ActiveRecord::Migration
  def change
    remove_column :activities, :sets, :integer
    remove_column :activities, :repetition, :integer
    remove_column :activities, :distance, :string
    remove_column :activities, :time, :time
    remove_column :activities, :workout_id, :integer
  end
end
