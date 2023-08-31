# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all
Team.destroy_all
Player.destroy_all

puts "Creating user..."
user_test_1 = User.create!({email: "test@test.com", password: "123456", name: "Test"})

puts "Creating team..."
team_test_1 = Team.create!({name: "Équipe de France", category: "Senior", country: "France", user: user_test_1})

puts "Creating players..."
player_test_1 = Player.create!({name: "Clément DUBOIS", nationality: "French", gender: "Male", birthdate: "1995".to_i, position: "GK", handedness: "A", available: true, team: team_test_1})

player_test_2 = Player.create!({name: "Rémi SAUDADIER", nationality: "French", gender: "Male", birthdate: "1986", position: "FP", handedness: "R", available: true, team: team_test_1})

player_test_3 = Player.create!({name: "Ugo CROUSILLAT", nationality: "French", gender: "Male", birthdate: "1990", position: "FP", handedness: "R", available: true, team: team_test_1})

player_test_4 = Player.create!({name: "Alexandre BOUET", nationality: "French", gender: "Male", birthdate: "2000", position: "FP", handedness: "R", available: true, team: team_test_1})

player_test_5 = Player.create!({name: "Enzo KHASZ", nationality: "French", gender: "Male", birthdate: "1993", position: "FP", handedness: "R", available: true, team: team_test_1})

player_test_6 = Player.create!({name: "Thomas VERNOUX", nationality: "French", gender: "Male", birthdate: "2002", position: "FP", handedness: "R", available: true, team: team_test_1})

player_test_7 = Player.create!({name: "Duje ZIVKOVIC", nationality: "French", gender: "Male", birthdate: "1990", position: "FP", handedness: "L", available: true, team: team_test_1})

player_test_8 = Player.create!({name: "Emil BJORCH", nationality: "French", gender: "Male", birthdate: "1987", position: "FP", handedness: "R", available: true, team: team_test_1})

player_test_9 = Player.create!({name: "Mehdi MARZOUKI", nationality: "French", gender: "Male", birthdate: "1987", position: "FP", handedness: "R", available: true, team: team_test_1})

player_test_10 = Player.create!({name: "Charles CANNONE", nationality: "French", gender: "Male", birthdate: "1996", position: "FP", handedness: "L", available: true, team: team_test_1})

player_test_11 = Player.create!({name: "Pierre-Frederic VANPEPERSTRAETE", nationality: "French", gender: "Male", birthdate: "1992", position: "FP", handedness: "R", available: true, team: team_test_1})

player_test_12 = Player.create!({name: "Andrea DE NARDI", nationality: "French", gender: "Male", birthdate: "1998", position: "FP", handedness: "R", available: true, team: team_test_1})

player_test_13 = Player.create!({name: "Hugo FONTANI", nationality: "French", gender: "Male", birthdate: "1994", position: "GK", handedness: "A", available: true, team: team_test_1})

puts "Finished!"
