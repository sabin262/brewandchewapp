class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
    	t.string :name
    	t.integer :price
    	t.string :category
    end
  end
end
