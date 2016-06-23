class AddProfileToShirts < ActiveRecord::Migration
  def change
    add_reference :shirts, :profile, index: true, foreign_key: true
  end
end
