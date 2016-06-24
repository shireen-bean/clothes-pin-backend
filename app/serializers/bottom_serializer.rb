class BottomSerializer < ActiveModel::Serializer
  attributes :id, :bottom_name, :brand, :color, :business, :leg_length, :description, :image, :profile_id
end
