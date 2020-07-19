require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


l1 = Listing.new("NYC")
l2 = Listing.new("Seattle")

g1 = Guest.new("Alex")
g2 = Guest.new("Russell")

t1 = Trip.new(l1, g1)
t2 = Trip.new(l2, g2)
t3 = Trip.new(l1, g2)

l1.guests

l1.trips

l1.trip_count

Listing.find_all_by_city("NYC")

Listing.most_popular

g2.listings

g2.trips

g2.trip_count

Guest.pro_traveller

Guest.find_all_by_name("Russell")

binding.pry
0