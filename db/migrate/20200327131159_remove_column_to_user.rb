class RemoveColumnToUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :password, :intger
  end
end
