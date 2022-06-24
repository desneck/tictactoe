module BOARD
    @board = Hash.new()
    9.times do |x|
        @board[x] = x
    end

    def draw
        #This is taken from rlmoser! All credit goes to her.
        puts <<-HEREDOC
 #{@board[0]} | #{@board[1]} | #{@board[2]}
---+---+---
 #{@board[3]} | #{@board[4]} | #{@board[5]}
---+---+---
 #{@board[6]} | #{@board[7]} | #{@board[8]}
        HEREDOC
    end 
    def update(input, player_symbol)
        @board[input] = player_symbol
    end
    def spot_full(input)
        if @board[input]  != nil
            true
        else 
            false 
        end
    end
    def board_free?
        counter = 0 
        @board.each do |x|
            if x == nil
                counter += 1 
            end 
        end
        if counter != 0 
            true
        else
            false
        end
        
    end
    def win?(current_player)
        if win_check == true
            p "#{current_player} has won "
            true
        else
            false
        end
    end
    def win_check
        if(@board[0] == @board[1] and @board[1]==@board[2] and @board[0]==@board[2])
            return true
        elsif(@board[3] == @board[4] and @board[4]==@board[5] and @board[3]==@board[5])
            return true
        elsif(@board[6] == @board[7] and @board[7]==@board[8] and @board[6]==@board[8])
            return true
        elsif(@board[0] == @board[3] and @board[3]==@board[6] and @board[0]==@board[6])
            return true
        elsif(@board[1] == @board[4] and @board[4]==@board[7] and @board[1]==@board[7])
            return true
        elsif(@board[2] == @board[5] and @board[5]==@board[8] and @board[2]==@board[8])
            return true
        elsif(@board[0] == @board[4] and @board[4]==@board[8] and @board[0]==@board[8])
            return true
        elsif(@board[2] == @board[4] and @board[4]==@board[6] and @board[2]==@board[6])
            return true
        else
            false
        end
        
    end 
end