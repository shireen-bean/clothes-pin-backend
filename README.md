Backend client for Clothes Pin Client

Data Base

TABLES:

User
  profile_id

Profile
  to: user
  shirts
  bottoms
  accessories
  shoes
  outfits

Shoes
  to: profile

Bottoms
  to: profile

Accessories
  to: profile

Outfits:
  to: shirts, bottoms, accessories, shoes
