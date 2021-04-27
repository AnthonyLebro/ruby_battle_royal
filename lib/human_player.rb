class HumanPlayer < Player

    attr_accessor: weapon_level
  
    def initialize(player)
      @life_points = 100
      @weapon_level = 1
    end
  
    def show_state
      puts "#{@player} a #{@lifepoint} points de vie et a une arme de niveau #{weapon_level}."
    end
  
    def compute_damage
      rand(1..6) * @weapon_level
    end
  
    def search_weapon
      result = rand(1..6)
      puts "Tu as trouvé une arme de niveau #{result}."
      if @weapon_level < result
        puts "Cette hache est bien aiguisé, je la prend!"
        @weapon_level = result
      else
        @weapon_level => result 
        puts "Ma lame est bien meilleure, je la garde"
      end
    end

    def search_health_pack
        rand(1..6) + @life_points
        puts "Tu as trouvé un pack guérison de #{@life_points}!"

      if result = 1
        puts "Tu ne gagnes pas de PV"

       if result = 6
            puts " Tes Points de vie se régenere de 80 points!"
            @life_points + 80 
            puts "Tu as maintenant #{@life_points}!"
            @life_points + 80 > 100? (@life_points = 100) :  (@life_points = @life_points + 80)
       else 
            puts " Tes point de vie se régénere de 50 points"
            @life_points + 50
            puts "Tu as désormais #{@life_points}!"
            @life_points + 50 > 100? (@life_points = 100) :  (@life_points = @life_points + 50)
       end
       
    end
            


end    