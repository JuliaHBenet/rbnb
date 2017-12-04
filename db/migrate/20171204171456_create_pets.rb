class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.integer :daily_price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
