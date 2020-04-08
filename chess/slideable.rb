module Slideable

  HORIZONTAL = [ [0, 1], [0, -1], [1, 0], [-1, 0] ].freeze
  DIAGONAL = [ [1, 1], [-1, 1], [1, -1], [-1,-1] ].freeze

  def horizontal_dirs 
    HORIZONTAL
  end

  def diagonal_dirs
    DIAGONAL
  end

  def moves
    pos_moves = []
    self.move_dirs.each do |direction|
      x, y = direction
      pos_moves += grow_unblocked_moves_in_dir(x, y)    #array of all possible positions 
    end
    pos_moves
  end

  private 


  def move_dirs
    # overwritten by subclass
  end

  def grow_unblocked_moves_in_dir(dx, dy)  #dx/dy refer to what direction: - + +, + -, 0 +
    new_pos = [self.pos.first + dx, self.pos.last + dy]
    moves_answ = []

    while self.board[new_pos].empty? 
      moves_answ << new_pos   
      new_pos[0] += dx ; new_pos[1] += dy 
    end
    if self.board[new_pos].color != self.color  #not same color, can take opp piece
      moves_answ << new_pos
    end
    moves_answ
  end
end