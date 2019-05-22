module Stepable
  def moves
  end

  private
  def move_diffs
  end
end

class Knight
  def symbol
    @black = "♞"
    @white = "♘"
  end
  
  protected
  def move_diffs
  end
end

class King
  def symbol
    @black = "♚"
    @white = "♔"
  end

  protected
  def move_diffs
  end
end

