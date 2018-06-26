class Pirate

  attr_accessor :name, :weight, :height, :id
  @@all = []
  @@id = 0

  def initialize(params)
    @name = params[:name]
    @height = params[:height]
    @weight = params[:weight]
    @id = @@id

    @@all << self
    @@id += 1
  end

  def self.all
    @@all
  end

end
