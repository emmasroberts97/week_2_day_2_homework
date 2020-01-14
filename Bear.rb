class Bear

  attr_accessor :name, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def take_fish(fish)
    @stomach.push(fish)
  end

  def fish_count
    return @stomach.count
  end

  def roar
    return "ROAR"
  end

end
