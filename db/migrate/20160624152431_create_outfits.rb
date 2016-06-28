class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
