class Ship
  attr_accessor :capacity, :name

  @@all = []
  def self.all
    @@all
  end

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @@all << self
  end
end