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
PropAmenity.destroy_all
UnitAmenity.destroy_all

#PROPERTIES
properties = Property.create([
  { name: 'The Helios', address: '83 Gold St, New York, NY 10038' },
  { name: 'The Selene', address: '43-44 21st St, Long Island City, NY 11101'}
])

#AMENITIES
a1 = Amenity.create({name: 'pool', value: 100})
a2 = Amenity.create({name: 'gym', value: 100})
a3 = Amenity.create({name: 'game room', value: 50})
a4 = Amenity.create({name: 'roof terrace', value: 100})
a5 = Amenity.create({name: 'pet spa', value: 25})
a6 = Amenity.create({name: 'garage', value: 50})
a7 = Amenity.create({name: 'lounge', value: 50})
a8 = Amenity.create({name: 'dishwasher', value: 25})
a9 = Amenity.create({name: 'balcony', value: 100})
a10 = Amenity.create({name: 'terrace', value: 150})
a11 = Amenity.create({name: 'washer/dryer', value: 75})

#UNITS
helios_floors = [1,2,3,4,5,6,7,8,9,10,11,12]
lower_floors = helios_floors.slice(0..7)
upper_floors = helios_floors.slice(8..11)
i = 0

lower_floors.each do |floor|

  Unit.create({property_id: properties.first.id, number: floor.to_s + 'A', layout_type: '1_bed', floor: floor, square_footage: 625, line: 'A', floorplan: 'url', status: 'vacant', market_rent: 3500 + (10 * i)})

  Unit.create({property_id: properties.first.id, number: floor.to_s + 'B', layout_type: '1_bed', floor: floor, square_footage: 650, line: 'B', floorplan: 'url', status: 'vacant', market_rent: 3600 + (10 * i)})

  Unit.create({property_id: properties.first.id, number: floor.to_s + 'C', layout_type: '1_bed', floor: floor, square_footage: 690, line: 'C', floorplan: 'url', status: 'vacant', market_rent: 3800 + (10 * i)})

  Unit.create({property_id: properties.first.id, number: floor.to_s + 'D', layout_type: '2_bed', floor: floor, square_footage: 1200, line: 'D', floorplan: 'url', status: 'vacant', market_rent: 5900 + (10 * i)})

  Unit.create({property_id: properties.first.id, number: floor.to_s + 'E', layout_type: '1_bed', floor: floor, square_footage: 740, line: 'A', floorplan: 'url', status: 'vacant', market_rent: 4000 + (10 * i)})

  Unit.create({property_id: properties.first.id, number: floor.to_s + 'F', layout_type: 'studio', floor: floor, square_footage: 510, line: 'B', floorplan: 'url', status: 'vacant', market_rent: 5500 + (10 * i)})

  Unit.create({property_id: properties.first.id, number: floor.to_s + 'G', layout_type: '2_bed', floor: floor, square_footage: 1350, line: 'C', floorplan: 'url', status: 'vacant', market_rent: 6100 + (10 * i)})

  Unit.create({property_id: properties.first.id, number: floor.to_s + 'H', layout_type: '1_bed', floor: floor, square_footage: 630, line: 'D', floorplan: 'url', status: 'vacant', market_rent: 3550 + (10 * i)})

  i += 1

end

i = 0

upper_floors.each do |floor|

  Unit.create({property_id: properties.first.id, number: floor.to_s + 'A', layout_type: '2_bed', floor: floor, square_footage: 1300, line: 'A', floorplan: 'url', status: 'vacant', market_rent: 6050 + (10 * i)})

  Unit.create({property_id: properties.first.id, number: floor.to_s + 'B', layout_type: '2_bed', floor: floor, square_footage: 1150, line: 'B', floorplan: 'url', status: 'vacant', market_rent: 5700 + (10 * i)})

  Unit.create({property_id: properties.first.id, number: floor.to_s + 'C', layout_type: '2_bed', floor: floor, square_footage: 1150, line: 'C', floorplan: 'url', status: 'vacant', market_rent: 5800 + (10 * i)})

  Unit.create({property_id: properties.first.id, number: floor.to_s + 'D', layout_type: '2_bed', floor: floor, square_footage: 1275, line: 'D', floorplan: 'url', status: 'vacant', market_rent: 6000 + (10 * i)})

  i += 1

end

floors = [1,2,3,4,5,6,7,8,9,10]
i = 0

floors.each do |floor|


  Unit.create({property_id: properties.second.id, number: floor.to_s + '01', layout_type: '1_bed', floor: floor, square_footage: 625, line: 'A', floorplan: 'url', status: 'vacant', market_rent: 3500 + (10 * i)})

  Unit.create({property_id: properties.second.id, number: floor.to_s + '02', layout_type: '2_bed', floor: floor, square_footage: 1150, line: 'B', floorplan: 'url', status: 'vacant', market_rent: 5500 + (10 * i)})

  Unit.create({property_id: properties.second.id, number: floor.to_s + '03', layout_type: '1_bed', floor: floor, square_footage: 670, line: 'C', floorplan: 'url', status: 'vacant', market_rent: 3900 + (10 * i)})

  Unit.create({property_id: properties.second.id, number: floor.to_s + '04', layout_type: 'studio', floor: floor, square_footage: 490, line: 'D', floorplan: 'url', status: 'vacant', market_rent: 2800 + (10 * i)})

  i += 1

end

#LEASES
units = Unit.all

l1 = Lease.create({ unit_id: units.first.id, start_date: 10, end_date: 20, rent: 3100, status: 'current', account_balance: 100, in_legal: false })

#RESIDENTS
r1 = Resident.create({ first_name: 'John', last_name: 'McClane', email:'jmcyippee@yahoo.com', ssn: '111-22-3333', date_of_birth: '12/25/1960'})

#JOINS
rl1 = ResLease.create({resident_id: r1.id, lease_id: l1.id })

pa1 = PropAmenity.create({property_id: properties.first.id, amenity_id: a1.id })
ua1 = UnitAmenity.create({unit_id: units.first.id, amenity_id: a2.id })
