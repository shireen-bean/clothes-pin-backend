class AddProfileToOutfits < ActiveRecord::Migration
  def change
    add_reference :outfits, :profile, index: true, foreign_key: true
  end
end
