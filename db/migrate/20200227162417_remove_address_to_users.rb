class RemoveAddressToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :address
  end
end
