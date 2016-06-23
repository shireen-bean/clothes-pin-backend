class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :given_name
      t.string :surname
      t.string :gender
      t.text :description
      t.string :picture

      t.timestamps null: false
    end
  end
end
