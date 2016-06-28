class Accessory < ActiveRecord::Base
  belongs_to :profile, foreign_key: :profile_id, inverse_of: :accessories
  belongs_to :outfit
  validates_presence_of :image, :accessory_name
end
