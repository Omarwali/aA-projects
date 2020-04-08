class Pawn < Piece

  def symbol
    :P
  end

  def moves


  end

  private 

  def at_start_row?
    1 if color == :W
    6 if color == :B

  end
  
  def forward_dir   #if white/black -> direction +1 ; if black/white -> direction -1
    -1 if self.color == :B
    1 if self.color == :W
  end

  def forward_steps  # +1/+2 if at start pos; +1  or -1/-2; -1
  
  end

  def side_attacks  #if opp piece is [+1, +1] or [-1, +1] pawn can take
  
  end

end