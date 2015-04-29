json.array!(@workout_logs) do |workout_log|
  json.extract! workout_log, :id
  json.url workout_log_url(workout_log, format: :json)
end
