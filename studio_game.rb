require_relative 'player'
require_relative 'game'

player1 = Player.new("moe", 100)
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)


knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play(3)
knuckleheads.print_stats



# player4 = Player.new("dog", 10)
# player5 = Player.new("cat", 6)
# player6 = Player.new("lobster", 15)
#
# warcraft = Game.new("Warcraft")
# warcraft.add_player(player4)
# warcraft.add_player(player5)
# warcraft.add_player(player6)
# warcraft.play




