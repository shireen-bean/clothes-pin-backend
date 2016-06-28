class Bottom < ActiveRecord::Base
  belongs_to :profile, foreign_key: :profile_id, inverse_of: :bottoms
  belongs_to :outfit
end
