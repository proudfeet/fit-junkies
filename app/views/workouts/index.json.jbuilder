json.array!(@workouts) do |workout|
  json.extract! workout, :id, :workout_name, :notes
  json.url workout_url(workout, format: :json)
end
