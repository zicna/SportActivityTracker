class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :gender
      t.date :birth_date
      t.decimal :height
      t.decimal :start_weight
      t.string :image
      t.string :home_location

      t.timestamps
    end
  end
end
