class Shoe < ActiveRecord::Base
  belongs_to :profile, foreign_key: :profile_id, inverse_of: :shoes
end
