class Outfit < ActiveRecord::Base
    has_one :shirt_id
    has_one :bottom_id
    has_one :shoe_id
    has_one :accessory_id
    belongs_to :profile, foreign_key: :profile_id, inverse_of: :outfits
end
