class CreateTutorialsTable < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :name
      t.text :description
      t.text :video
      t.timestamps
    end
  end
end

