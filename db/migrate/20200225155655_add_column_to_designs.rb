class AddColumnToDesigns < ActiveRecord::Migration[5.2]
  def change
    add_column :designs, :name, :string
  end
end
