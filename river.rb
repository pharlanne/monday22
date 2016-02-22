class River

  def initialize(fish_group)
    @fish_group=fish_group
  end

  def fish_group
    return @fish_group
  end

  def take_fish
    @fish_group.shift
  end
end