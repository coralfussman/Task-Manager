class Member < ApplicationRecord
  has_many :tasks
  has_many :member_teams, dependent: :destroy
  has_many :teams, through: :member_teams
  has_secure_password
end
