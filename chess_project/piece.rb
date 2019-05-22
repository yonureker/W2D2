require_relative 'board.rb'
require 'colorize'


module Stepable
end

class Piece
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos #[0,0]
  end

  def to_s
  end

  def empty?
  end

  def valid_moves
  end

  def pos=(val)
  end

  def symbol
  end

  private
  def move_into_check?(end_pos)
  end
end

