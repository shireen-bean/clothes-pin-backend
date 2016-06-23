#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  belongs_to :profile
end
