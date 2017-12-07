class AddAddressToPets < ActiveRecord::Migration[5.0]
  def change
    add_column :pets, :address, :string
  end
end
