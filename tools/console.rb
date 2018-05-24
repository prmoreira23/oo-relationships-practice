require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

p = Passenger.new
p2 = Passenger.new

d = Driver.new
d2 = Driver.new
d3 = Driver.new
d4 = Driver.new

r = Ride.new(100, d, p)
r2 = Ride.new(500, d2, p)
r3 = Ride.new(56, d, p2)
r4 = Ride.new(48, d4, p)

Pry.start
