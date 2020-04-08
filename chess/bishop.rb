class Bishop < Piece
  include Slideable

  def symbol
    :B
  end

  protected

  def move_dirs
    self.diagonal_dirs
  end

end