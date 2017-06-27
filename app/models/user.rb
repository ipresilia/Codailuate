class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

# ADDED THIS, BUT NOT SURE IT'S GOOD
  has_many :students, through: :batches, source: :student
end
