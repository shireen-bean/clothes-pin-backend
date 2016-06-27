class ShirtSerializer < ActiveModel::Serializer
  attributes :id, :top_name, :brand, :color, :pattern, :sleeves, :tags, :image, :profile_id
end
