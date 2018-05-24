class Driver
  @@all = []

  def initialize
    @@all << self
  end

  def rides
    Ride.all.select {|ride| ride.driver == self }
  end

  def total_milieage
    rides.reduce(0) {|sum, ride| sum += ride.distance }
  end

  def passengers
    rides.collect {|ride| ride.passenger }
  end

  def self.mileage_cap(distance)
    self.all.select {|driver| driver.total_milieage > distance}
  end

  def self.all
    @@all
  end
end
