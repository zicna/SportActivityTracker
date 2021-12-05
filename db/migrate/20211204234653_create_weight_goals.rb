class CreateWeightGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :weight_goals do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.decimal :goal

      t.timestamps
    end
  end
end
