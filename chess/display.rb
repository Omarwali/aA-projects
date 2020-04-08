require_relative "./board.rb"
require_relative "./cursor.rb"
require "colorize"
require "colorized_string"

class Display
  attr_reader :board

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0, 0], board)
  end
  
  def render    #prints our board as currently existing
    p self.board
  end
  
end

