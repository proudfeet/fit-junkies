class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # before_validation { name.strip! } --> used to validate

  # has_many :activities
  has_many :activities, through: :workout_activities
  has_many :workouts, through: :workout_activities
  # has_many :workouts
  has_many :workout_activities

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
