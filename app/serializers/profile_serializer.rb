class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :surname, :gender, :description, :picture, :user_id
end
