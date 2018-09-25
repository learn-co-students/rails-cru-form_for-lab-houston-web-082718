
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Song.destroy_all
Genre.destroy_all

tpain = Artist.create(name: "T-pain", bio: "Makes rap songs")
beyonce = Artist.create(name: "Beyonce", bio: "Makes pop songs")
rap = Genre.create(name: "Rap")
pop = Genre.create(name: "Pop")
drank = Song.create(name: "Buy U a drank", artist: tpain, genre: rap)
ring = Song.create(name: "Put a ring on it", artist: beyonce, genre: pop)
halo = Song.create(name: "Halo", artist: beyonce, genre: pop)

# drank.artist = tpain
# drank.genre = rap

