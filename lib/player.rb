require_relative "board.rb"
include BOARD
class Player
    def initialize
        @player = Hash.new
        @player[1] = "X"
        @player[2] = "O"
        @@current_player = 1
    end
    def player_input(player)
        p "Player #{player}'s turn, Please pick a spot:"
        input = gets.chomp.to_i
        proccesed_input = input + 1
        next_player
        valid_input?(input)
        BOARD.update(input,@player[current_player])

        
    end
    def valid_input?(input)
        if(input > 9 ||input < 0||!BOARD.spot_full(input))
            invalid_input
        end
    end
    def invalid_input
        p "Input is not valid!"
        #make changes
    end
    def current_player
        @@current_player
    end
    def next_player
        if @@current_player == 1
            @@current_player += 1 
        else 
            @@current_player -= 1
        end
        
    end
end