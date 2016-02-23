# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artists = []
5.times do |artist|
  a = Artist.create!(name: Faker::Name.name)
  artists << a
end

instruments = ["Guitar", "Piano", "Bass"]
statuses = ["Future", "In Progress", "Learned", "Memorized"]
keys = ["A", "B", "C", "D", "E", "F", "G"]

15.times do
  Song.create!(title: Faker::App.name, instrument: instruments.sample, artist_id: artists.sample.id,
      status: statuses.sample, key: keys.sample, performed_on: Faker::Date.between(1.year.ago, Date.today))
end
