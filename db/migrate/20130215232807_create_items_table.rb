class CreateItemsTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.float :quantity
      t.text :recipe_note
      t.integer :ingredient_id
      t.integer :recipe_id
      t.timestamps
    end
  end
end

