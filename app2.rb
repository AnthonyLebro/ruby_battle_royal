require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/human_player'


puts "     -------------------------------------------------
     |         Welcome On The Power Coders           |
     |                 Battle Royal !                |
     -------------------------------------------------"

puts "     -------------------------------------------------
     |     Soit le dernier survivant pour gagner!    |
     -------------------------------------------------"
puts " "

    puts "Comment tu t'intitules?"  
    name = gets.chomp.to_s

    human_player = HumanPlayer.new(name)


    enemy = []

enemy << player1 = Player.new("Antho")
enemy << player2 = Player.new("Xab")


 # tant que le player humain a plus de 0pts ou si l'un des deux joueurs ordi a plus de 0pts on continue
 while human_player.life_points >0 && (player1.life_points > 0 || player2.life_points >0)
        
    puts "-------------------------------"
    puts "-------------------------------"
    puts "Quelle action veux-tu effectuer ?"
    puts "-------------------------------"
    puts "a - Chercher une meilleure arme"
    puts "s - Chercher à se soigner" 
    puts " "
    puts "Attaquer un joueur en vue :"
    puts "-------------------------------"
    puts "1 - #{player1.show_state}"
    puts "2 - #{player2.show_state}"
    puts "-------------------------------"

    puts "#{human_player.show_state}"


    choose_human = gets.chomp

    if choose_human == "a"
        human_player.search_weapon
        gets.chomp

    elsif choose_human == "s"
        human_player.search_health_pack 
        gets.chomp

    elsif choose_human == "1"
        human_player.attacks(player1)
        gets.chomp

    elsif choose_human == "2"
        human_player.attacks(player2) 

    else
        puts "Tu dois choisir entre a (pour les armes), s (pour la santé), 1 (Pour attaquer player 1) ou 2 (Pour attaquer le player 2)"
        gets.chomp
    end

    enemy.each {|item| item.life_points > 0 ? item.attacks(human_player) : nil}
    gets.chomp
end


    puts "La partie est finie"
  if human_player.life_points > 0
    # affiche si le player humain a gagné
    puts "\033[1;31mBRAVO ! TU AS GAGNE !"+"\033[0m"
  else 
    #affiche si le player humain a perdu
    puts "\033[1;31mLoser ! Tu as Duper mamène !"+"\033[0m"
end
