class CreateRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.integer :recipe_id
      t.integer :food_id
      t.integer :quantity

      t.timestamps
    end
  end
end
