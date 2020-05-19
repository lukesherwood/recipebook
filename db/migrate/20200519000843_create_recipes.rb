class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :method
      t.text :ingredients
      t.references :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
