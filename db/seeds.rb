# normally i wouldn't hard code it like this vs ingesting or using Faker gem, but i had a list of geolocations
# so i just tossed them in here so i knew for sure where they were located in case it came up

League.create(
  league_name: 'Denver, Colorado',
  price: '2500',
  latitude: '39.6796',
  longitude: '-104.9626'
)

League.create(
  league_name: 'Fort Luaderdale, Florida',
  price: '2000',
  latitude: '26.0671',
  longitude: ',-80.2768'
)

League.create(
  league_name: 'Cleveland, Ohio',
  price: '1500',
  latitude: '41.3861',
  longitude: '-81.7371'
)

League.create(
  league_name: 'The Bronx, New York',
  price: '750',
  latitude: '40.847',
  longitude: '-73.8616'
)

League.create(
  league_name: 'Tulsa, Oklahoma',
  price: '200',
  latitude: '36.0934',
  longitude: '-95.8791'
)

League.create(
  league_name: 'Lindenhurst, New York',
  price: '1200',
  latitude: '40.6914',
  longitude: '-73.3728'
)

League.create(
  league_name: 'Eatentown, New Jersey',
  price: '600',
  latitude: '40.3014',
  longitude: '-74.0705'
)
