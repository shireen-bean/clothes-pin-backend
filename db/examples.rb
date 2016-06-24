require 'csv'

Profile.transaction do
  CSV.foreach 'data/profiles.csv', headers: true do |profile|
    Profile.create(profile.to_hash)
  end
end

Shirt.transaction do
  CSV.foreach 'data/shirts.csv', headers: true do |shirt|
    Shirt.create(shirt.to_hash)
  end
end

Bottom.transaction do
  CSV.foreach 'data/bottoms.csv', headers: true do |bottom|
    Bottom.create(bottom.to_hash)
  end
end

Accessory.transaction do
  CSV.foreach 'data/accessories.csv', headers: true do |accessory|
    Accessory.create(accessory.to_hash)
  end
end


# Bottom.create([
#   { bottom_name: 'name', brand: 'Brand', color: 'red', business: true, leg_length: 'mid', description: 'shorts', image: 'path'}
#   ])


 # This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end
