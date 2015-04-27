# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Activity.create(name: "bench press", activity_type: "anabolic") 
Activity.create(name: "running", activity_type: "aerobic") 
Activity.create(name: "squat", activity_type: "anabolic")  
Activity.create(name: "deadlift", activity_type: "anabolic")  
Activity.create(name: "cycling", activity_type: "aerobic")  
Activity.create(name: "swimming", activity_type: "aerobic")

Workout.create(workout_name: "Workout 1", notes: "This is my first ever workout")  
Workout.create(workout_name: "Leg Day", notes: "")
Workout.create(workout_name: "Running 5k", notes: "")

WorkoutActivity.create(workout_id: 1, activity_id: 8, sets: 3, reps: 10, weight: 300, distance: nil, time: nil)  
WorkoutActivity.create(workout_id: 2, activity_id: 11, sets: 3, reps: 10, weight: 150, distance: nil, time: nil,)
WorkoutActivity.create(workout_id: 2, activity_id: 10, sets: 3, reps: 10, weight: 100, distance: nil, time: nil,) 
WorkoutActivity.create(workout_id: 3, activity_id: 9, sets: nil, reps: nil, weight: nil, distance: 5, time: 30,) 
WorkoutActivity.create(workout_id: 3, activity_id: 9, sets: nil, reps: nil, weight: nil, distance: 5, time: 35,) 
WorkoutActivity.create(workout_id: 3, activity_id: 9, sets: nil, reps: nil, weight: nil, distance: 5, time: 40,) 
WorkoutActivity.create(workout_id: 3, activity_id: 9, sets: nil, reps: nil, weight: nil, distance: 5, time: 45,)

Entry.create(weight: 155, thigh: 20, waist: 20, chest: 20, upperarm: 20, notes: "Entry 1")