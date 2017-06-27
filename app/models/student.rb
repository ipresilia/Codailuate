class Student < ApplicationRecord
  belongs_to :batch

  validates :full_name, presence: true
  validates :picture, presence: true
  validates :last_evaluation, presence: true
end
