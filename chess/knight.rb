class Knight < Piece

  include Stepable

  def symbol
    :H
  end

  protected

  def move_diffs
    #[1, 2], [2, 1].....
  end
end