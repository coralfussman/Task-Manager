class Task < ApplicationRecord
  belongs_to :project
  belongs_to :member
  has_many :labels, through: :label_tasks
end
