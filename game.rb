require_relative 'player'
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'
class Game

  def initialize(title)
    @title = title
    @players = []
  end
  
  def add_player(a_player)
    @players.push(a_player)
  end
  
  attr_reader :title

  def play(rounds)
       puts "There are #{@players.size} players in #{@title}"
       
       treasures = TreasureTrove::TREASURES
       puts "\nThere are #{treasures.size} treasures to be found"
       treasures.each do |treasure|
         puts "A #{treasure.name} is worth #{treasure.points} points"
       end
       
       1.upto(rounds) do |round|
         puts "\nRound #{round}:"
        @players.each do |player|
          GameTurn.take_turn(player)
          puts player 
        end 
      end 


end

def print_name_and_health(player)
  puts "#{player.name}(#{player.health})"
end


def print_stats
  strong_players, wimpy_players = @players.partition {|player| player.strong? }

  puts "\n#{@title}'s Satistics:"
  
  puts "\n#{strong_players.size} strong players:"
  strong_players.each do |player|
    print_name_and_health(player)
  end
  
  puts "\n#{wimpy_players.size} wimpy players:"
  wimpy_players.each do |player|
    print_name_and_health(player)
  end
  
  puts "\n#{@title}'s High Scores"
  @players.sort.each do |player|
    puts "#{player.name} #{player.score}"
  end



end

end







