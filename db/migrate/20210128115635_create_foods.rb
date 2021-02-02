class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.references :restaurant, null: false, foreign_key: true, comment: '所属するレストランのid'
      t.string :name, null: false
      t.integer :price, null: false
      t.text :description, null: false
      t.timestamps
    end
  end
end
