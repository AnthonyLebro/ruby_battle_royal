require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/human_player'


puts "------------------------------------------------
     |         Welcome On The Power Coders            |
     |                 Battle Royal !                 |
      -------------------------------------------------"

print "------------------------------------------------
     |     Soit le dernier survivant pour gagner!     |
      -------------------------------------------------"

    player1 = Player.new("Antho")
    player2 = Player.new("Xab")
    puts "Voici l'état de chaque joueur :"
    puts "-------------------------------"
    player1.show_state
    player2.show_state
    puts "-------------------------------"


while player2.life_points > 0 && player1.life_points > 0

    puts ""
    puts "\033[1;32mPassons à la phase d'attaque :"+"\033[0m"
    player2.attacks(player1)
    if player1.life_points <= 0
        break
    else
        player1.attacks(player2)
    end
end

binding.pry