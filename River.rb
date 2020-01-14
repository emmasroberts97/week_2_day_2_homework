class River

  attr_accessor :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def get_fish_count
    return @fish.count
  end

  def add_fish(fish)
    @fish.push(fish)
  end

  def remove_fish(fish)
    @fish.delete(fish)
  end

  def bear_takes_fish(bear,fish_name)
    for fish in @fish
      if fish == fish_name
        bear.take_fish(fish)
        remove_fish(fish)
      end
    end
  end
  
end
