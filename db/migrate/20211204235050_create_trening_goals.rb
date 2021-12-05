class CreateTreningGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :trening_goals do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :activity_type
      t.string :goal_type
      t.integer :target
      t.integer :duration
      t.date :start_date

      t.timestamps
    end
  end
end
