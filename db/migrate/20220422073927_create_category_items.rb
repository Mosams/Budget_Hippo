class CreateCategoryItems < ActiveRecord::Migration[7.0]
  def change
    create_table :category_items do |t|
      t.references :category, null: false, foreign_key: true, index: true
      t.references :expense, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
