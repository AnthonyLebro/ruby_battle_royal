class Player

  attr_accessor :player, :life_points


  def initialize(player)
    @player = player.to_s
    @life_points = 10

  end

  def show_state()
    puts "#{@player} a #{@life_points} points de vie"
  end

  def gets_damage(damages)
    @life_points = life_points - damages
    if @life_points <= 0
      puts "\033[1;31m#{@player} is WASTED !"+"\033[0m"
    end  
  end

  def attacks(player_attacked)
    puts "#{@player} attaque le joueur #{player_attacked.player}"
    damages = compute_damages()
    puts "#{@player} lui inflige #{damages} de point(s) de dégat!"
    player_attacked.gets_damage(damages)
  end

  def compute_damages
    return rand(1..6)
  end

end






