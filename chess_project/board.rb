require 'byebug'
class Board
  attr_reader :rows

  def initialize
    @rows = Array.new(8) {Array.new(8, "?")}
    @rows[0][0], @rows[0][7] = "♜", "♜"
    @rows[0][1], @rows[0][6] = "♞", "♞"
    @rows[0][2], @rows[0][5] = "♝", "♝"
    @rows[0][3] = "♛"	
    @rows[0][4] = "♚"	
    (0..7).each do |x|
      @rows[1][x] = "♟"
    end

    @rows[7][0], @rows[7][7] = "♖", "♖"
    @rows[7][1], @rows[7][6] = "♗", "♗"
    @rows[7][2], @rows[7][5] = "♘", "♘"
    @rows[7][3] = "♕"
    @rows[7][4] = "♔"
    (0..7).each do |x|
      @rows[6][x] = "♙"
    end
  end
  
  def place_pieces
    @rows[0,0] = Rook.new("black", board, [0,0])
  end

  def move_piece(color, start_pos, end_pos)
    begin
      @rows[start_pos[0]][start_pos[1]] = NullPiece.new
      @rows[end_pos[0]][end_pos[1]] = nil #Piece.new
      raise StandardError if @rows[start_pos[0]][start_pos[1]] == nil #NullPiece.value##(nil)
    rescue => exception
      raise StandardError, "Position is empty...!"
    end
  end

  def valid_pos?(position)
    position.each do |pos|
      return false if pos > @rows.size - 1 || pos < 0
    end
    true
  end

  def [](position)
    @rows[position[0]][position[1]]
  end

  def []=(position, value)
    @rows[position[0]][position[1]] = value
  end

end
