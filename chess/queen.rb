class Queen < Piece
  include Slideable

  def symbol
    :Q
  end

  protected

  def move_dirs
    self.horizontal_dirs + self.diagonal_dirs
  end

end