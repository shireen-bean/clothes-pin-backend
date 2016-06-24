class AddClothingToOutfits < ActiveRecord::Migration
  def change
    add_reference :outfits, :shirt, index: true, foreign_key: true
    add_reference :outfits, :bottom, index: true, foreign_key: true
    add_reference :outfits, :shoe, index: true, foreign_key: true
    add_reference :outfits, :accessory, index: true, foreign_key: true
  end
end
