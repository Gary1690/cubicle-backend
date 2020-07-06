class Task < ApplicationRecord
  belongs_to :project
  has_many :assigments
  has_many :members, through: :assigments
end
