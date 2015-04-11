class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # before_validation { name.strip! } --> used to validate
  has_many :workouts
  # has_many :activites, through :workouts

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
