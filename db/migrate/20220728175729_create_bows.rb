class CreateBows < ActiveRecord::Migration[7.0]
  def change
    create_table :bows do |t|
      t.string :name
      t.integer :attack
      t.integer :durability
      t.integer :range
      t.text :description
      t.string :category
      t.string :image

      t.timestamps
    end
  end
end
