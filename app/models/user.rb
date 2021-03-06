class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_booker
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
