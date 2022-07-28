class CreateArmors < ActiveRecord::Migration[7.0]
  def change
    create_table :armors do |t|
      t.string :name
      t.string :category
      t.integer :defense
      t.string :effect
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
