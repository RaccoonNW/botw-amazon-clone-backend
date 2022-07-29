class CreateWeapons < ActiveRecord::Migration[7.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :handed
      t.string :category
      t.integer :attack
      t.integer :durability
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
