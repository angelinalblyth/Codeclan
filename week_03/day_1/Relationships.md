CUSTOMERS & CUSTOMER_DETAILS

One to one - Customer can have many details (orders etc)
CUSTOMERS
  - id
  - name

CUSTOMER_DETAILS
  - id
  - address
  - city
  - postcode
  - mobile
  - customer_id

BASKETBALL TEAMS & PLAYERS

Many to one - team has many players but player should have one team.

PLAYERS
  - id
  - first_name
  - last_name
  - number
  - position
  - age
  - team_id

TEAMS
  - id
  - name
  - locations

STAR WARS CHARACTERS AND LIGHTSABERS

CHARACTERS
  - id
  - name
  - darkside
  - age

LIGHTSABERS
  - id
  - hilt_metal
  - colour
  - owner_id

one to many

ORDERED ITEMS & CUSTOMERS

many to many

ITEMS
  - id
  - name
  - sharpness
  - price
  - colour

CUSTOMERS
  - id
  - name
  - email

orders
  - id
  - customer_id
  - item_id
  - date
  
