# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Property.destroy_all
Unit.destroy_all

properties = Property.create([{ name: 'The Helios', address: '83 Gold St, New York, NY 10038' }, { name: 'The Selene', address: '43-44 21st St, Long Island City, NY 11101'}])

Unit.create({property_id: properties.first.id, number: '201', layout_type: '1bed', floor: 2, square_footage: 625, line: 'A', floorplan: 'url', status: 'vacant', market_rent: 3000})
