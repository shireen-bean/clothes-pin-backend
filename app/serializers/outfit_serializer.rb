class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :date_wear, :description, :shirt_id, :bottom_id, :accessory_id, :shoe_id, :profile_id
end
