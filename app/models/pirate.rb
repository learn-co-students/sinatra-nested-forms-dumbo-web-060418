class Pirate

  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]

    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end
  # 
  # def ships
  #   Ship.all.select do |ship|
  #     if ship.pirate == self
  #       return ship
  #     end
  #   end
  # end

end
