class CreateShields < ActiveRecord::Migration[7.0]
  def change
    create_table :shields do |t|
      t.string :name
      t.integer :guard
      t.integer :durability
      t.string :material
      t.string :image
      t.text :description
      t.string :category
      t.integer :defense

      t.timestamps
    end
  end
end
