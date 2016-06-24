class CreateBottoms < ActiveRecord::Migration
  def change
    create_table :bottoms do |t|
      t.string :bottom_name
      t.string :brand
      t.string :color
      t.boolean :business
      t.string :leg_length
      t.string :description
      t.string :image

      t.timestamps null: false
    end
  end
end
