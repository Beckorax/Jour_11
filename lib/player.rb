class Player
  attr_accessor :name, :life_points
  @@all_players = []

  def initialize(name)
    @name = name
    @life_points = 10
    @@all_players << self
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end 
  
  def gets_damage(damage)
    @life_points -= damage    # inflige des dommages
    if @life_points <= 0      # vérifie sur PV sont à 0
      puts "#{@name} a été tué !"   # si PV = 0, j'informe
    end
  end

def compute_damage 
     return rand(1..6)
  end

 def  attacks (player)
  puts "le joueur #{@name} attaque le joueur #{player.name} ! "
  damage = compute_damage
  puts " Il lui inflige #{damage} points de dégats"
  player.gets_damage(damage)
 end
  
end

class HumanPlayer < Player
   attr_accessor :weapon_level 

  def initialize(name)
    @name = name
    @life_points = 100
    @weapon_level = 1
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
  end 

def compute_damage
    rand(1..6) * @weapon_level
  end


def search_weapon
    weapon_level = rand(1..6) # lancer de dé sera égal au niveau de la nouvelle arme trouvée.
    puts "Tu as trouvé une arme de niveau #{weapon_level}"
       if weapon_level > @weapon_level
      @weapon_level = weapon_level
      puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
    else
      puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
    end
  end

 def search_health_pack
    health_pack = rand(1..6) # lancr de dé sera égal au niveau de la nouvelle arme trouvée.
        if  health_pack == 1 
    puts "c'est la galère, circulez y'as rien à voir"
        end
        if  health_pack == 6
                @life_points = @life_points + 80
           if   @life_points > 100
                @life_points = 100
            puts "Bravo, tu viens de gagner 80 points de vie" 
          end
        end

       if (health_pack>1) && (health_pack<6)
          @life_points = @life_points + 50
        if @life_points > 100
           @life_points = 100
        puts "Bravo, tu viens de gagner 50 points de vie" 
        end
      end
  end 


end