# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Property.destroy_all
Unit.destroy_all
Lease.destroy_all
Resident.destroy_all
ResLease.destroy_all

properties = Property.create([{ name: 'The Helios', address: '83 Gold St, New York, NY 10038' }, { name: 'The Selene', address: '43-44 21st St, Long Island City, NY 11101'}])

a1 = Amenity.create({name: 'pool', value: 100})
a2 = Amenity.create({name: 'dishwasher', value: 25})

u1 = Unit.create({property_id: properties.first.id, number: '201', layout_type: '1bed', floor: 2, square_footage: 625, line: 'A', floorplan: 'url', status: 'occupied', market_rent: 3000})

l1 = Lease.create({ unit_id: u1.id, start_date: 10, end_date: 20, rent: 3100, status: 'current', account_balance: 100, in_legal: false })
r1 = Resident.create({ first_name: 'John', last_name: 'McClane', email:'jmcyippee@yahoo.com', ssn: '111-22-3333', date_of_birth: '12/25/1960'})

rl1 = ResLease.create({resident_id: r1.id, lease_id: l1.id })

pa1 = PropAmenity.create({property_id: properties.first.id, amenity_id: a1.id })
ua1 = UnitAmenity.create({unit_id: u1.id, amenity_id: a2.id })
