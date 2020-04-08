require_relative "./piece.rb"
require_relative "nullpiece.rb"

class Board

    attr_reader :rows, :sentinel

    def initialize
        @rows = Array.new(8){Array.new(8, "_") }
        @sentinel = NullPiece.instance
    end

    def populate
        (0...self.rows.length).each do |i|
            (0...self.rows.length).each do |j|
                if i < 2
                    self.rows[i][j] = Piece.new(:W, self, [i,j])
                elsif i >= 6 
                    self.rows[i][j] = Piece.new(:B, self, [i,j])
                else
                    self.rows[i][j] = self.sentinel
                end
            end
        end
        self
    end

    def [](pos)
        x, y = pos
        @rows[x][y]
    end

    def []=(pos, val)
        x, y = pos
        @rows[x][y] = val
    end

    class NoPieceError < StandardError
        def np_message
            "Look Elsewhere - there are no pieces here."
        end
    end

    class InvalidMoveError < StandardError
        def ime_message
            "Nope - can't quite move there."
        end
    end

    def move_piece(color, start_pos, end_pos)  #should look to move piece to end_pos
        raise NoPieceError unless self[start_pos] == color

        if self[end_pos] == color || !valid_pos(end_pos)
            raise InvalidMoveError
        else
            self[end_pos] = color
        end
            
    end

    def valid_pos?(pos)   #sees if position is valid on the board
        return false if pos.any?{ |x| x > 7 || x < 0 }   # - ?possibly check to see if we can also move to legit space?
        true
    end

    def add_piece(piece, pos)   #allows game to "write" a piece into a pos of grid
        self[pos] = piece 
    end

    def checkmate?(color)   #looks if current player can move to opp. kings pos

    end

    def in_check?(color)  #looks to see if opposing player can move to kings pos

    end

    def find_king(color) 
        #look at players remaining pieces and return kings position
    end

    def pieces  # return array to show how many pieces are left?
        
    end

    def dup    # 

    end

    def move_piece!(color, start_pos, end_pos)   #move and take opposing player piece

    end


end