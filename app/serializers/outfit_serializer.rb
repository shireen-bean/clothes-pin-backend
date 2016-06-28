class OutfitSerializer < ActiveModel::Serializer
  attributes :id, :description, :shirt_id, :bottom_id, :accessory_id, :shoe_id, :profile_id
end
