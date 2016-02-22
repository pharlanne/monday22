require ("minitest/autorun")
require ("minitest/rg")  #for green/red test
require_relative("../fish")  

class TestBear < MiniTest::Test

def setup
  @fish1=Fish.new("dory")
end
end
