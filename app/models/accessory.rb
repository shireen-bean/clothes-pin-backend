class Accessory < ActiveRecord::Base
  belongs_to :profile, foreign_key: :profile_id, inverse_of: :accessories
end
