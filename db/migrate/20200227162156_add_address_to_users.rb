class AddAddressToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :street_address, :string
    add_column :users, :city, :string
    add_column :users, :state_province, :string
    add_column :users, :zip_code, :string
    add_column :users, :country, :string
  end
end
