class Game

    def initialize
        @board = Board.new
        @display Display.new
        @players = {}     #hash of k = player and v = [remaining pieces]
        @current_player   #symbol/player name
    end

    def play
        
    end

    private

    def notify_players

    end

    def swap_turn!  #reassin current player based on player hash

    end


end