require 'pry'
class Ride
  attr_reader :driver, :passenger, :distance
  @@all = []

  def initialize(distance, driver, passenger)
    @distance = distance
    @drive = driver
    @passenger = passenger
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    all.reduce(0) {|sum, ride| sum += ride.distance } / all.count
  end
end
