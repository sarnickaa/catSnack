class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :brand_name
      t.string :main_ingredient
      t.string :secondary_ingredient
      t.references :pet, foreign_key: true

      t.timestamps
    end
  end
end
