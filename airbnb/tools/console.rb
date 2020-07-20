require_relative '../config/environment.rb'
require_relative '../app/models/trip.rb'
require_relative '../app/models/guest.rb'
require_relative '../app/models/listing.rb'

def reload
  load '../config/environment.rb'
end


l1 = Listing.new("NYC")
l2 = Listing.new("Seattle")
l3 = Listing.new("Montpelier")

g1 = Guest.new("Alex")
g2 = Guest.new("Russell")

t1 = Trip.new(l1, g1)
t2 = Trip.new(l2, g2)
t3 = Trip.new(l1, g2)
t4 = Trip.new(l3, g2)
t5 = Trip.new(l2, g1)
t6 = Trip.new(l2, g1)

l1.guests

l1.trips

l1.trip_count

Listing.find_all_by_city("NYC")

g2.listings

g2.trips

g2.trip_count

Guest.pro_traveller

# Guest.find_all_by_name("Russell")

Listing.most_popular

binding.pry
0