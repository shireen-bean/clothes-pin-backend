class Profile < ActiveRecord::Base
  belongs_to :user, foreign_key: :user_id
  has_many :shirts, inverse_of: :profile
  has_many :bottoms, inverse_of: :profile
  has_many :accessories, inverse_of: :profile
  has_many :shoes, inverse_of: :profile
end
