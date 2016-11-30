# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all
Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

10.times do |i|
  Tag.create(name: "Tag #{i}")
end
