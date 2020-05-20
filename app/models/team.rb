class Team < ApplicationRecord
    has_many :projects
    has_many :member_teams, dependent: :destroy
    has_many :members, through: :member_teams
    accepts_nested_attributes_for :member_teams
end
