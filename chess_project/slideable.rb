module Slideable
  def horizontal_dirs
  end

  def diagonal_dirs
  end

  def moves
  end
  
  private
  def move_dirs
  end

  def grow_unblocked_moves_in_dir(dx, dy)
  end
  
  HORIZONTAL_DIRS = []
  DIAGONAL_DIRS = []
end

class Rook < Piece
  include Slideable

  def initialize
    super
  end

  def symbol
    @black = "♜"
    @white = "♖"
  end

  def black
   return @black 
  end

  def white
   return @white 
  end

  protected
  def move_dirs
  end
end

class Bishop < Piece
  include Slideable

  def symbol
    @black = "♝"
    @white = "♗"
  end

  protected
  def move_dirs
  end
end

class Queen < Piece
  include Slideable

  def symbol
    @black = "♛"
    @white = "♕"
  end

  protected
  def move_dirs
  end
end