require_relative "player.rb"
require_relative "board.rb"
include BOARD
module PLAY 
    def play
        player = Player.new
        loop do 
            BOARD.draw
            player.player_input(player.current_player)
            player.next_player
            if BOARD.win?(player.next_player) == true
                p "Game Over press 1 to restart 0 to exit"
                choice = gets.chomp.to_i
                if choice == 1
                    PLAY.play
                elsif choice == 0
                    break
                end
             
                
            end
            
        end 
    end 
end 