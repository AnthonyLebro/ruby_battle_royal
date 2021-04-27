class Player

  attr_accessor :player, :lifepoint


  def initialize(player)
    @player = player.to_s
    @life_points = 10

  end

  def show_state()
    puts "#{@player} a #{@life_points} points de vie"
  end

  def gets_damage(domages)
    new_point = life_points - domage
    if new_point <= 0
      puts "#{@player} a été tué !"
    end  
  end

  def attacks(player_attacked)
    puts "#{@player} attaque le jouer #{player_attacked.player}"
    damages = compute_damage
    puts "Il lui inflige #{damages} de point de dégat!"
    player_attacked.gets_damage(damages)
  end

  def compute_damage
    return rand (1..6)
  end

end






