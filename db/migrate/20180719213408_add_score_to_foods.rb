class AddScoreToFoods < ActiveRecord::Migration[5.1]
  def change
    add_column :foods, :score, :integer
  end
end
