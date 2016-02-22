require ("minitest/autorun")
require ("minitest/rg")  #for green/red test
require_relative("../bear")  
require_relative("../river")
require_relative("../fish")

class TestBear < MiniTest::Test

  def setup
    @bear1=Bear.new("polar","white ted")
    @bear2=Bear.new("panda", "ying")

    fish1=Fish.new("nemo")
    fish2=Fish.new("moby")
    fish3=Fish.new("goldie")

    fish_group = [fish1, fish2,fish3] # put [] (no fish) return nil - so error
    @river=River.new(fish_group)
  end

  def test_bear_roar
    assert_equal("roar",@bear1.bear_roar)
  end

  def test_take_fish_from
    @bear1.add_fish_to_tummy(@river.fish_group[0])
    @river.take_fish
    assert_equal("nemo",@bear1.bear_tummy[0].fish_name) #for question how do we know the fish has moved from the river to the tummy
    assert_equal(2,@river.fish_group.length)
  end
end