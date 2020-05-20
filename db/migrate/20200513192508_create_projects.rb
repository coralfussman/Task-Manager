class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.belongs_to :team, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :date

      t.timestamps
    end
  end
end
