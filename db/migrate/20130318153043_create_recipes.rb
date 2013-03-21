class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :instructions
      t.string :imgUrl
      t.string :webUrl
      t.decimal :rating

      t.timestamps
    end
  end
end
