require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

def home
  puts "-------------------------------------------------"
  puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
  puts "|Le but du jeu est d'être le dernier survivant !|"
  puts "-------------------------------------------------"
end

def init_player
  print "Quel est ton nom ? "
  player_name = gets.chomp
  puts "Bonjour #{player_name} !"
  player_man = HumanPlayer.new(player_name)
  puts "J'ai créé ton avatar !"
  return player_man
end

home
human_being = init_player

# création des ennemis
enemie1 = Player.new("Josiane")
enemie2 = Player.new("José")
enemies = [enemie1,enemie2]