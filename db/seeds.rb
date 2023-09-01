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
user1 = User.create!({ email: "test@test.com", password: "123456", name: "Cercle des Nageurs de Marseille" })

puts "Creating team..."
team1 = Team.create!({ name: "Équipe de France", category: "Senior", country: "France", user: user1 })

puts "Creating players..."
player1 = Player.create!({ name: "Clément DUBOIS", nationality: "French", gender: "Male",
                           birthdate: "1995".to_i, position: "Goalkeeper", handedness: "Right-Handed",
                           available: true, team: team1 })

player2 = Player.create!({ name: "Rémi SAUDADIER", nationality: "French", gender: "Male",
                           birthdate: "1986", position: "Field Player", handedness: "Right-Handed",
                           available: true, team: team1 })

player3 = Player.create!({ name: "Ugo CROUSILLAT", nationality: "French", gender: "Male",
                           birthdate: "1990", position: "Field Player", handedness: "Right-Handed",
                           available: true, team: team1 })

player4 = Player.create!({ name: "Alexandre BOUET", nationality: "French", gender: "Male",
                           birthdate: "2000", position: "Field Player", handedness: "Right-Handed",
                           available: true, team: team1 })

player5 = Player.create!({ name: "Enzo KHASZ", nationality: "French", gender: "Male",
                           birthdate: "1993", position: "Field Player", handedness: "Right-Handed",
                           available: true, team: team1 })

player6 = Player.create!({ name: "Thomas VERNOUX", nationality: "French", gender: "Male",
                           birthdate: "2002", position: "Field Player", handedness: "Right-Handed",
                           available: true, team: team1 })

player7 = Player.create!({ name: "Duje ZIVKOVIC", nationality: "French", gender: "Male",
                           birthdate: "1990", position: "Field Player", handedness: "Left-Handed",
                           available: true, team: team1 })

player8 = Player.create!({ name: "Emil BJORCH", nationality: "French", gender: "Male",
                           birthdate: "1987", position: "Field Player", handedness: "Right-Handed",
                           available: true, team: team1 })

player9 = Player.create!({ name: "Mehdi MARZOUKI", nationality: "French", gender: "Male",
                           birthdate: "1987", position: "Field Player", handedness: "Right-Handed",
                           available: true, team: team1 })

player10 = Player.create!({ name: "Charles CANNONE", nationality: "French", gender: "Male",
                            birthdate: "1996", position: "Field Player", handedness: "Left-Handed",
                            available: true, team: team1 })

player11 = Player.create!({ name: "Pierre-Frederic VANPEPERSTRAETE", nationality: "French",
                            gender: "Male", birthdate: "1992", position: "Field Player", handedness: "Right-Handed",
                            available: true, team: team1 })

player12 = Player.create!({ name: "Andrea DE NARDI", nationality: "French", gender: "Male",
                            birthdate: "1998", position: "Field Player", handedness: "Right-Handed",
                            available: true, team: team1 })

player13 = Player.create!({ name: "Hugo FONTANI", nationality: "French", gender: "Male",
                            birthdate: "1994", position: "Goalkeeper", handedness: "Right-Handed",
                            available: true, team: team1 })

puts "Finished!"
