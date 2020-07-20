require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Client.new("Sam")
c2 = Client.new("Alex")
c3 = Client.new("Alex2")
c4 = Client.new("Sam2")
c5 = Client.new("Alex3")

t1 = Trainer.new("Trainer", 5)
t2 = Trainer.new("Trainer2", 3)
t3 = Trainer.new("Trainer3", 1)
t4 = Trainer.new("Trainer4", 2)

l1 = Location.new("NYC")
l2 = Location.new("Seattle")
l3 = Location.new("Least Popular")

g1 = Gym.new(l1, t1)
g2 = Gym.new(l1, t2)
g3 = Gym.new(l1, t2)
g4 = Gym.new(l2, t1)
g5 = Gym.new(l3, t3)
g6 = Gym.new(l2, t1)

# t1 = 1 client - l1, l2, l2
# t2 = 3 clients - l1, l1
# t3 = 1 client - l3

c1.assign_trainer(t1)
c2.assign_trainer(t2)
c3.assign_trainer(t3)
c4.assign_trainer(t2)
c5.assign_trainer(t2)


Location.least_clients

t3.locations

Trainer.most_clients

# Location.find_gym_by_trainer(t1)

binding.pry
0