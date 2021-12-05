class CreateTreningSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :trening_sessions do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.datetime :start_time
      t.integer :duration
      t.string :activity_type
      t.decimal :distance
      t.text :note
      t.string :feeling

      t.timestamps
    end
  end
end
