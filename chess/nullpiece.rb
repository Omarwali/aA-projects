require_relative "piece.rb"
require "singleton"

class NullPiece < Piece
  include Singleton

  def initialize
    @color = :N
    @symbol = :N
  end

  def moves
  end

  def symbol
    :N
  end

  def empty?
    true
  end


end