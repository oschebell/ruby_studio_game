require_relative 'player'
require_relative 'spec_helper'

describe Player do
  
    before do
      @initial_health = 50
      @player = Player.new("larry", @initial_health)
    end
  
    it "has a capitalized name" do  
      @player.name.should == "Larry"
    end
  
    it "has an initial health" do 
      @player.health.should == 50
    end
  
    it "has a string representation" do
      @player.to_s.should == "I'm Larry with a health of 50 and a score of 55"
    end
  
    it "decreases health by 10 when given a 'blam'" do
     @player.blam
     @player.health.should == @initial_health - 10
    end
  
    it "increases health by 15 when given a 'w00t'" do
    @player.w00t
    @player.health.should == @initial_health + 15
  
    end
  
  
    context "with a health greater than 100" do
    before do
      @player = Player.new("larry", 150)
    end
    
    it "is strong" do
      @player.should be_strong
      
    end
  
  
  
  context "with an initial health of 100" do
    before do
      @player = Player.new("larry", 100)
    end
  
    it "is wimpy" do
      @player.should_not be_strong
    end
    
  end
  
  context "in a collection of players" do
    before do
      @player1 = Player.new("moe", 100)
      @player2 = Player.new("larry", 200)
      @player3 = Player.new("curly", 300)

      @players = [@player1, @player2, @player3]
    end

    it "is sorted by decreasing score" do
      @players.sort.should == [@player3, @player2, @player1]
    end
  end
  
  
end
end
