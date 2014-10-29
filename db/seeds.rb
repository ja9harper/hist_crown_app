# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(first_name: 'PJ', last_name: 'Hughes', email: 'pj@ga.com')
user = User.create(first_name: 'Janine', last_name: 'Harper', email: 'ja9harper@gmail.com')
user = User.create(first_name: 'Marc', last_name: 'Bushelle', email: 'mbushelle@gmail.com')
place = Place.create(name:'Imperial Apartments', address:'1198 Pacific Street', image: ('ImperialApts.jpg'), history: 'Built in 1894', latlng: '40.677785, -73.95187')
place = Place.create(name:'Brooklyn Children\'s Museum', address:'145 Brooklyn Avenue', history: 'Founded in 1899, it was the first of it\'s kind..', latlng: '40.67448672675216, -73.9440715312957')
place = Place.create(name:'Susan B. Elking House', address:'1375 Dean Street', history: 'Construction finished in 1894.', latlng: '40.677785, -73.95187')
place = Place.create(name:'Labor Day Parade', address:'Eastern Parkwaay', history: 'This gathering started in 1947.', latlng: '40.66996239371307, -73.9511203765869')
place = Place.create(name:'Chabad-Lubavitch Hasidic Movement HQ', address:'770 Eastern Parkway', history: 'It was once a medical facility in the late 1800s.', latlng: '40.669439, -73.942855')
place = Place.create(name:'St. Gregory\'s Catholic Church', address:'224 Brooklyn Avenue', history: 'This church as served the Catholic community of Crown Heights since 1905.', latlng: '40.67169567268225, -73.9453858137130')

story = Story.new(title: 'Castle in Crown Heights', body: 'This was the scene of a movie that starred film noir star Gabrielle Govet who died tragically shortly after that')
story = Story.new(title: 'The Big Cheese', body: 'Children from all over the world flock to this museum whose bright yellow structure stands out. My daughter enjoys the live animal shows.')
story.user = user
story.place = place
story.save