class CreateDesigns < ActiveRecord::Migration[5.2]
  def change
    create_table :designs do |t|
      t.references :user, foreign_key: true
      t.string :file_type
      t.boolean :layers, default: false
      t.boolean :indexed_colors, default: false
      t.string :pattern
      t.string :category
      t.integer :price
      t.boolean :sold, default: false

      t.timestamps
    end
  end
end
