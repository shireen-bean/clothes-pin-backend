class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.string :top_name
      t.string :brand
      t.string :color
      t.string :business
      t.string :pattern
      t.string :sleeves
      t.string :tags

      t.timestamps null: false
    end
  end
end
