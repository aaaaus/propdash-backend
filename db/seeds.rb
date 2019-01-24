# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#################################################
#DESTROY ALL OBJECTS

Property.destroy_all
Unit.destroy_all
Lease.destroy_all
Resident.destroy_all
ResLease.destroy_all

Amenity.destroy_all
PropAmenity.destroy_all
UnitAmenity.destroy_all

#################################################
#PROPERTIES

properties = Property.create([
  { name: 'The Helios', address: '83 Gold St, New York, NY 10038' },
  { name: 'The Selene', address: '43-44 21st St, Long Island City, NY 11101'}
])

#################################################
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

#################################################
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

#################################################
#LEASES

#preset lease terms

start_0 = Time.parse("2018-01-01 Eastern Time (US & Canada)").utc
end_0 = Time.parse("2018-12-31 Eastern Time (US & Canada)").utc

start_1 = Time.parse("2018-02-01 Eastern Time (US & Canada)").utc
end_1 = Time.parse("2019-01-31 Eastern Time (US & Canada)").utc

start_2 = Time.parse("2018-03-01 Eastern Time (US & Canada)").utc
end_2 = Time.parse("2019-02-28 Eastern Time (US & Canada)").utc

start_3 = Time.parse("2018-04-01 Eastern Time (US & Canada)").utc
end_3 = Time.parse("2019-03-31 Eastern Time (US & Canada)").utc

start_4 = Time.parse("2018-05-01 Eastern Time (US & Canada)").utc
end_4 = Time.parse("2019-04-30 Eastern Time (US & Canada)").utc

start_5 = Time.parse("2018-06-01 Eastern Time (US & Canada)").utc
end_5 = Time.parse("2019-05-31 Eastern Time (US & Canada)").utc

start_6 = Time.parse("2018-07-01 Eastern Time (US & Canada)").utc
end_6 = Time.parse("2019-06-30 Eastern Time (US & Canada)").utc

start_7 = Time.parse("2018-08-01 Eastern Time (US & Canada)").utc
end_7 = Time.parse("2019-07-31 Eastern Time (US & Canada)").utc

start_8 = Time.parse("2018-09-01 Eastern Time (US & Canada)").utc
end_8 = Time.parse("2019-08-31 Eastern Time (US & Canada)").utc

start_9 = Time.parse("2018-10-01 Eastern Time (US & Canada)").utc
end_9 = Time.parse("2019-09-30 Eastern Time (US & Canada)").utc

start_10 = Time.parse("2018-11-01 Eastern Time (US & Canada)").utc
end_10 = Time.parse("2019-10-31 Eastern Time (US & Canada)").utc

start_11 = Time.parse("2018-12-01 Eastern Time (US & Canada)").utc
end_11 = Time.parse("2019-11-30 Eastern Time (US & Canada)").utc

start_12 = Time.parse("2019-01-01 Eastern Time (US & Canada)").utc
end_12 = Time.parse("2019-12-31 Eastern Time (US & Canada)").utc

terms = [[start_1, end_1], [start_2, end_2], [start_3, end_3], [start_4, end_4], [start_5, end_5], [start_6, end_6], [start_7, end_7], [start_8, end_8], [start_9, end_9], [start_10, end_10], [start_11, end_11], [start_12, end_12]]

# l1 = Lease.create({ unit_id: units.first.id, start_date: term_start_5, end_date: term_end_5, rent: 3100, status: 'current', account_balance: 0, in_legal: false })
# l2 = Lease.create({ unit_id: units.second.id, start_date: 10, end_date: 20, rent: 3200, status: 'current', account_balance: 100, in_legal: false })

Unit.all.each do |unit|
  random_value = (rand * 100).to_i

  lease_dates = terms.shuffle[0] #selects random set for term dates
  start_date = lease_dates[0]
  end_date = lease_dates[1]
  rent = (random_value.even?) ? unit.market_rent + random_value : unit.market_rent - random_value
  in_legal = (random_value === 1 ? true : false) # ensures 1% chance of unit being in legal
  account_balance = (random_value > 90 ? rent : 0) # ensure 10% chance apartment has a balance equal to one month's rent

  if random_value < 86 #ensures ~15% of units are vacant
    unit.update(status: 'occupied')

    Lease.create({ unit_id: unit.id, start_date: start_date, end_date: end_date, rent: rent, status: 'current', account_balance: account_balance, in_legal: in_legal })

  else #create past leases for vacant units so that "days vacant" works
    Lease.create({ unit_id: unit.id, start_date: start_0, end_date: end_0, rent: rent, status: 'past', account_balance: account_balance, in_legal: in_legal })

  end
end

leases = Lease.all

#################################################
#RESIDENTS

resident_names = ['Jeff Hwang', 'Laura Kim', 'Mike Cheng', 'Evans Wang', 'Andrew Cohn', 'Jason Decker', 'Albert Chun', 'Alex Truong', 'Alex Frosell', 'Ali Reubenstone', 'Austin Luft', 'Cara Morelli', 'Chett Tiller', 'Eric Laitman', 'Frida Casas', 'Ian Hollander', 'Leslie Turis', 'Mike Wu', 'Minhee Park', 'Phong Nguyen', 'Saajid Khan', 'Sarah Pai', 'Sam Turac', 'Sydney Grant', 'Tirem Bareno-Sosna', 'Vera Protopopova', 'Yoan Ante', 'Yu Li', 'Michael Scott', 'Jim Halpert', 'Pam Beesley', 'Dwight Schrute', 'Barack Obama', 'Donald Trump', 'John McClane', 'Joey Tribbiani', 'Chandler Bing', 'Jennifer Lopez', 'Lady Gaga', 'Don Draper', 'Bruce Wayne', 'Clark Kent', 'Dave Chapelle', 'Bruce Willis', 'Tony Soprano', 'Jennifer Aniston', 'Jerry Seinfeld', 'George Costanza', 'Elaine Benes', 'Cosmo Kramer', 'Anthony Bourdain', 'Chris Evans', 'Harry Potter', 'Hermione Granger', 'Nicolas Cage', 'Keanu Reaves', 'Alexander Raymond', 'Vladimir Putin', "Conan O'Brien", 'Conan The-Barbarian', 'Oprah Winfrey', 'Leslie Knope', 'Ron Swanson', 'Tom Haverford', 'Andy Dwyer', 'Tony Montana', 'Pablo Escobar', 'Eric Clapton', 'Grimace McDonald', 'Angelina Jolie', 'Misty Knight', 'Melania Trump', 'Michelle Obama', 'Dwayne Johnson', 'Elton John', 'Jean-Claude Van-Damme', 'Hannah Jeter', "Beyonce Knowles-Carter", 'Kendall Jenner', 'Eva Longoria', 'Eva Mendes', 'Salma Hayek', 'Panelope Cruz', 'Jon Snow', 'John Cena', 'Stone-Cold Steve-Austin', 'Kurt Angle', 'Jessica Alba', 'Justin Timberlake', 'Ozzy Osbourne', 'Cookie Monster', 'Big Bird', 'Spongebob Squarepants', 'Patrick Star', 'Luke Skywalker', 'Han Solo', 'Frodo Baggins', 'Tyrion Lannister', 'Roger Federer', 'Hugh Grant', 'Hugh Jackman', 'Lebron James', 'Kobe Bryant', 'Genghis Khan', 'Hannibal Lecter', 'Wade Wilson', 'Jean-Luc Picard', 'Danny Devito', 'Alicia Keys', 'Lenny Kravitz', 'George Clooney', 'Jennifer Lawrence', 'Jessica Alba', 'Will Smith', 'Tom Cruise', 'Leonardo DiCaprio', 'Kanye West', 'Kevin Hart', 'John Mulaney', 'Brad Pitt', 'Peter Parker', 'Philip Fry', 'Zapp Brannigan', 'Amy Wong', 'Dr. Zoidberg', 'Bender Rodriguez', 'Hermes Conrad', 'Michael Corleone', 'George Jefferson', 'Darth Vader', 'Obi-Wan Kenobi', 'Kate Winslet', 'Hulk Hogan', 'Tom Hanks', 'Dwight Howard', 'Mother Theresa', 'Nicole Kidman', 'Rachel Ray', '50 Cent', 'Simon Cowell', 'Harrison Ford', 'Tom Brady', 'Michael Jordan', 'Kristen Bell', 'David Beckham', 'Freddy Mercury', 'Hugh Hefner', 'Johnny Depp', 'Ryan Reynolds', 'William Shatner', 'Jim Carrey', 'David Letterman', 'Tina Fey', 'Arnold Schwarzenegger', 'Justin Bieber', 'Lil Wayne', 'Fidel Castro', 'James Dean', 'Tiger Woods', 'Albert Einstein', 'Charlie Sheen', 'Alec Baldwin', 'Mick Jagger', 'Usain Bolt', 'Maya Angelou', 'Bill Gates', 'Pope Francis', 'Ryan Seacrest', 'Adam Sandler', 'Bob Dylan', 'Queen Latifah', 'Adam Sandler', 'Howard Stern', 'Payton Manning', 'Taylor Swift', 'Cristiano Ronaldo', 'Muhammad Ali', 'Mike Tyson', 'Bart Simpson', 'Eric Cartman', 'Bugs Bunny', 'Tupac Shakur', 'Snoop Dogg', 'David Bowie', 'Ash Ketchum', 'The Grinch']



shuffle_residents = resident_names.shuffle #shuffle residents and call pop to return and remove from list

shuffle_residents.length.times do
  name = shuffle_residents.pop
  first_name = name.split(" ")[0]
  last_name = name.split(" ")[1]

  Resident.create({ first_name: first_name, last_name: last_name, email: "#{first_name[0].downcase}#{last_name.downcase}@fakemail.com", ssn: '111-22-3333', date_of_birth: '01/01/1970'})

end

residents = Resident.all #can call shuffle


#JOINS

shuffle_leases = leases.shuffle
more_leases = leases.shuffle

residents.each do |resident|

  if shuffle_leases.length > 0
    lease = shuffle_leases.pop

    ResLease.create({resident_id: resident.id, lease_id: lease.id })
  else
    lease = more_leases.pop

    ResLease.create({resident_id: resident.id, lease_id: lease.id })
  end
end

# pa1 = PropAmenity.create({property_id: properties.first.id, amenity_id: a1.id })
# ua1 = UnitAmenity.create({unit_id: units.first.id, amenity_id: a2.id })
