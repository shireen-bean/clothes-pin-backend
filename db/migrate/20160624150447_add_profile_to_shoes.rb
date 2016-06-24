class AddProfileToShoes < ActiveRecord::Migration
  def change
    add_reference :shoes, :profile, index: true, foreign_key: true
  end
end
