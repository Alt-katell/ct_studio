class CreateDesignTags < ActiveRecord::Migration[5.2]
  def change
    create_table :design_tags do |t|
      t.references :design, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
