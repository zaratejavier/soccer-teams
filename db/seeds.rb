# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# teams = Team.create(Faker::Sports::Football.team)

10.times do
  @team = Team.create(name:Faker::Sports::Football.team)


10.times do
  @player = Player.create(
    name: Faker::Sports::Football.player,
    age: rand(18..50),
    position: Faker::Sports::Football.position,
    height: rand(4..8),
    weight: rand(100..300),
    number: rand(1..50),
    team_id: @team.id
   )
end
end

puts "seeded!!!!!!!!!!!!!!!!!!!!!!!!!"