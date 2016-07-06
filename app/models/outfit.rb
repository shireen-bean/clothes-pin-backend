class Outfit < ActiveRecord::Base
    has_one :shirt
    has_one :bottom
    has_one :shoe
    has_one :accessory
    belongs_to :profile, foreign_key: :profile_id
    validates_presence_of :shirt_id, :shoe_id, :bottom_id, :accessory_id
end
