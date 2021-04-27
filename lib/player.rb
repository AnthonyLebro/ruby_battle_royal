class Player

  attr_accessor :player, :life_points #déclaration des variables en lecture et écriture


  def initialize(player)
    @player = player.to_s
    @life_points = 10

  end

  def show_state()
    puts "#{@player} a #{@life_points} points de vie" #point de vie 
  end

  def gets_damage(damages)
    @life_points = life_points - damages #variable des dommages
    if @life_points <= 0
      puts "\033[1;31m#{@player} is WASTED !"+"\033[0m" #texte de fin
      @life_points = 0
    end  
  end

  def attacks(player_attacked)
    puts "#{@player} attaque le joueur #{player_attacked.player}" # variables d'attaque
    damages = compute_damages()
    puts "#{@player} lui inflige #{damages} de point(s) de dégat!" # mise a jour des dégats
    player_attacked.gets_damage(damages)
  end

  def compute_damages #lancé de dès résultats random entre 1 et 6
    return rand(1..6)
  end

end






