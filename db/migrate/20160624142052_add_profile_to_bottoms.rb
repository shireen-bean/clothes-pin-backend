class AddProfileToBottoms < ActiveRecord::Migration
  def change
    add_reference :bottoms, :profile, index: true, foreign_key: true
  end
end
