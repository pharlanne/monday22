require ("minitest/autorun")
require ("minitest/rg")  #for green/red test
require_relative("../river") 
require_relative("../fish") 

class TestRiver < MiniTest::Test

  def setup
    fish1=Fish.new("nemo")
    fish2=Fish.new("moby")
    fish3=Fish.new("goldie")

    @fish_group = [fish1, fish2,fish3]
    @river=River.new(fish_group)
  end

end