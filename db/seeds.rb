# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# classical = Genre.new
# classical.name = "Classical"
# classical.description = "Songs for sleeping"
# classical.save
#
# rock = Genre.new
# rock.name = "Rock"
# rock.description = "Songs for Engergy"
# rock.save
#
# bridge = Song.new
# bridge.name = "Under the bridge"
# bridge.genre = rock
# bridge.save
#
# tv = Song.new
# tv.name = "Television"
# tv.genre = rock
# tv.save
#
# sym = Song.new
# sym.name = "Symfony"
# sym.genre = classical
# sym.save

rock = Genre.new
rock.name = "90s"
rock.description = "Songs for the 90s"
rock.save

disco = Genre.new
disco.name = "Disco"
disco.description = "Songs for the wild"
disco.save

frog = Song.new
frog.name = "Froggy Song"
frog.save

frog.genres << rock
