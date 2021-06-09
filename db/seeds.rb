# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@peach_tea = Tea.create({name: "peach-mint", description: "It's minty, it's peachy, too!", image: "image source needed", keywords: "peach, mint, fun", origin: "Colorado, USA", api_id: "123456", brew_time: 2, temperature: 80})
