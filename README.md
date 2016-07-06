Backend client for Clothes Pin Client

Front-end client: https://shkherad.github.io/close-pin-client/
Back-end deployed at:  https://clothespin.herokuapp.com/

DATA BASE:

TABLES:

User
  has: profile

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
