class ChangeTypeName < ActiveRecord::Migration[5.0]
  def change
    rename_column :pets, :type, :category
  end
end
