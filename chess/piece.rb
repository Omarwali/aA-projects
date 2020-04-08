class Piece
    attr_reader :color, :board, :pos
    #piece symbols :P, :H, :Q, :B, :R, :K, :N

def initialize(color, board, pos)
    @color = color    #symbol :W/ :B
    @board = board      #instance of board i.e b = Board.new
    @pos = pos   #array
end

def to_s  #converts piece symbols
    board[pos].symbol.to_s  #?
end

def empty?  #anything that is not a singleton -> false
    false
end

def valid_moves  #looks at piece moves array to see if an attempted move is allowed
    #filters out moves that will lead to check
    #returns remaining possible moves
end

def pos= (val)   #assign a value at a specific board position
    self.pos = val
end

def symbol          # - ?may reverse to_s line 9?
    board[pos].symbol   #?
end

private
def move_into_check?(end_pos)   #looks to see if a move exposes a player to being in check

end

end