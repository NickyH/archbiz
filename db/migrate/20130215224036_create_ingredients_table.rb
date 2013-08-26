class CreateIngredientsTable < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.text :units
      t.decimal :cost_per_unit
      t.float :std_unit_quantity
      t.integer :recipe_id
      t.timestamps
    end
  end
end

