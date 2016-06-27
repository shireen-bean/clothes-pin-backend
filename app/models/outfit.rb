class Outfit < ActiveRecord::Base
    has_one :shirt
    has_one :bottom
    has_one :shoe
    has_one :accessory
    belongs_to :profile, foreign_key: :profile_id
end
