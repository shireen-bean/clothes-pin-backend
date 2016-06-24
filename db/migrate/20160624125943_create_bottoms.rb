class CreateBottoms < ActiveRecord::Migration
  def change
    create_table :bottoms do |t|
      t.string :bottom_name
      t.string :brand
      t.string :color
      t.string :business
      t.string :length
      t.string :type

      t.timestamps null: false
    end
  end
end
