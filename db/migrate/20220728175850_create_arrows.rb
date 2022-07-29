class CreateArrows < ActiveRecord::Migration[7.0]
  def change
    create_table :arrows do |t|
      t.string :name
      t.string :effect
      t.string :image
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
