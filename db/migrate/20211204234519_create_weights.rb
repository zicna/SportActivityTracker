class CreateWeights < ActiveRecord::Migration[6.1]
  def change
    create_table :weights do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.decimal :weight_value
      t.datetime :time

      t.timestamps
    end
  end
end
