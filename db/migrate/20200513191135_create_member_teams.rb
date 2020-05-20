class CreateMemberTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :member_teams do |t|
      t.belongs_to :member, null: false, foreign_key: true
      t.belongs_to :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
