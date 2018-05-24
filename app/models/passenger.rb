class Passenger
  @@all = []

  # Constructor
  def initialize
    @@all << self
  end

  # Instance Methods
  def rides
    # returns all rides a passenger has been on
    Ride.all.select {|ride| ride.passenger == self }
  end

  def drivers
    #returns all drivers a passenger has ridden with
    rides.collect {|ride| ride.driver }
  end

  def total_distance
    # should calculate the total distance the passenger has travelled with the service
    rides.reduce(0) {|sum, ride| sum += ride.distance }
  end

  ## Class Methods
  def self.all
    @@all
  end

  def self.premium_members
    # should find all passengers who have travelled over 100 miles with the service
    self.all.select {|passenger| passenger.total_distance > 100 }
  end
end
