module Stepable

  def moves
    [ [1, 0], [0, 1], [-1, 0], [0, -1], [1, 1], [-1, -1] ]
  end

  def move_diffs
    # overwritten by subclass
  end
end