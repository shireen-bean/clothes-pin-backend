class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.date :date_wear
      t.string :description

      t.timestamps null: false
    end
  end
end
