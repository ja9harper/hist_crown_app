# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(first_name: 'PJ', last_name: 'Hughes', email: 'pj@ga.com')
place = Place.create(name:'Imperial Apartments', address:'1198 Pacific Street', history: 'Built in 1894', latlng: '40.677785, -73.95187')

story = Story.new(title: 'Castle in Crown Heights', body: 'This was the scene of a movie that starred film noir star Gabrielle Govet who died tragically shortly after that')

story.user = user
story.place = place
story.save