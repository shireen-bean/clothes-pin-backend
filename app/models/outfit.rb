class Outfit < ActiveRecord::Base
    has_one :shirt_id
    has_one :bottom_id
    has_one :shoe_id
    has one :accessory_id
end
