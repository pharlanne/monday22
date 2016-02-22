class Bear

  def initialize(bear_kind, bear_name)
    @bear_kind= bear_kind
    @bear_name= bear_name
    @bear_tummy=[]
  end


  def bear_roar
    return "roar"
  end
  def bear_tummy
    return @bear_tummy
  end

  def add_fish_to_tummy(fish)
    @bear_tummy<<fish
  end
end