class CreateDesignCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :design_categories do |t|
      t.references :design, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
