class ShoeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :profile_id
end
