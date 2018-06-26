class Pirate

  attr_accessor :name, :weight, :height, :id
  @@all = []
  @@id = 0

  def initialize(name, weight, height)
    @name = name
    @weight = weight
    @height = height
    @id = @@id

    @@all << self
    @@id += 1
  end

  def self.all
    @@all
  end

end
