class AddProfileToAccessories < ActiveRecord::Migration
  def change
    add_reference :accessories, :profile, index: true, foreign_key: true
  end
end
