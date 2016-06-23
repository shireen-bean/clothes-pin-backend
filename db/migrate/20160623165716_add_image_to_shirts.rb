class AddImageToShirts < ActiveRecord::Migration
  def change
    add_column :shirts, :image, :string
  end
end
