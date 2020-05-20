class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.belongs_to :project, null: false, foreign_key: true
      t.belongs_to :member, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :date
      t.string :label

      t.timestamps
    end
  end
end
