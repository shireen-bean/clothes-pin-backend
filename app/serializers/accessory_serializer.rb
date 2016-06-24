class AccessorySerializer < ActiveModel::Serializer
  attributes :id, :accessory_name, :brand, :color, :description, :tags, :image, :profile_id
end
