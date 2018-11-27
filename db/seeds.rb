# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
artists = Artist.create([{name: 'Elvis', bio: 'History'}, {name: "Anna", bio: "Soul story"}])
genres = Genre.create([{name: "Pop"}, {name: "Rock"}])
songs = Song.create([{name: "Tutti Frutti", artist_id: 1, genre_id: 2}])
