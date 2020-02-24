class RemoveCategoryFromDesigns < ActiveRecord::Migration[5.2]
  def change
    remove_column :designs, :category
  end
end
