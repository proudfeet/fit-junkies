json.array!(@workout_activities) do |workout_activity|
  json.extract! workout_activity, :id
  json.url workout_activity_url(workout_activity, format: :json)
end
