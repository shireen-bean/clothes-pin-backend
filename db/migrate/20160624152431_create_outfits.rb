class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.date :wear_on
      t.string :description

      t.timestamps null: false
    end
  end
end
