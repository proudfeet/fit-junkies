json.array!(@workouts) do |workout|
  json.extract! workout, :id, :workout_type, :notes
  json.url workout_url(workout, format: :json)
end
