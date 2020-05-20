class Project < ApplicationRecord
  belongs_to :team
  has_many :tasks
  has_many :labels, through: :tasks
  has_many :members, through: :tasks

end
