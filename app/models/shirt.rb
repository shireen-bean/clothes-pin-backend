class Shirt < ActiveRecord::Base
  belongs_to :profile, foreign_key: :profile_id, inverse_of: :shirts
end
