class ShirtSerializer < ActiveModel::Serializer
  attributes :id, :top_name, :brand, :color, :pattern, :sleeves, :tags, :profile_id
end
