class AddRecipesTutorialsTable < ActiveRecord::Migration
  def change
    create_table :recipes_tutorials, :id => false do |t|
      t.integer :tutorial_id
      t.integer :recipe_id
    end
  end
end
