

class Rook < Piece

  include Slideable

  def symbol
    :R
  end

  protected

  def move_dirs
    self.horizontal_dirs
  end

end