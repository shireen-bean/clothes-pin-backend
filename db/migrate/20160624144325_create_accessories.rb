class CreateAccessories < ActiveRecord::Migration
  def change
    create_table :accessories do |t|
      t.string :accessory_name
      t.string :brand
      t.string :color
      t.string :description
      t.string :tags
      t.string :image

      t.timestamps null: false
    end
  end
end
