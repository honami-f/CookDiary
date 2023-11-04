class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title, null: false
      t.text :ingredient
      t.text :instruction
      t.string :reference_url
      t.text :memo
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
