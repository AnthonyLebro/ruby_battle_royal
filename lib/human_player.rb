class HumanPlayer < Player

    attr_accessor :weapon_level #variable déclarées en lecture et écriture
  
    def initialize(player) 
    
      @weapon_level = 1
      super(player)
      @life_points = 100
    end
  
    def show_state      
      puts "#{@player} a #{@life_points} points de vie et a une arme de niveau #{weapon_level}." #mise a jour des point de vie et du niveau de l'arme
    end
  
    def compute_damages
      rand(1..6) * @weapon_level
    end
  
    def search_weapon #methode pour rechercher les armes
      result = rand(1..6)
      puts "Tu as trouvé une arme de niveau #{result}."
      if @weapon_level < result
        puts "Cette hache est bien aiguisée, je la prend!"
        @weapon_level = result
      else
        @weapon_level >= result 
        puts "Ma lame est bien meilleure, je la garde"    
      end 
    end

    def search_health_pack #methode pour rechercher les pack de santé
        result = rand(1..6)

      if result==1
        puts "Tu ne gagnes pas de PV! Dommage!"

       elsif result==6
            puts " Tes points de vie se régenerent de 80 points!"
            @life_points + 80 > 100? (@life_points = 100) :  (@life_points = @life_points + 80)
            puts "Tu as maintenant #{@life_points}!"
            
       else 
            puts " Tes points de vie se régénerent de 50 points"
            @life_points + 50 > 100? (@life_points = 100) :  (@life_points = @life_points + 50)
            puts "Tu as désormais #{@life_points}!"
 
       end

    end
            


end    