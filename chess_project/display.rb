require 'colorize'
require 'byebug'
require_relative 'cursor.rb'
require_relative 'board.rb'

class Display
  attr_reader :board
  def initialize(board)
    @board = board  # Board.new?
    @cursor = Cursor.new([0,0], board)
  end

  def render

    until @cursor.get_input == nil
      # @board.[]=(@cursor.cursor_pos, "C").to_s.colorize(:green)
      system("clear")

      @board.rows.each_with_index do |row, idx1|
        puts "-------------------------------"
        row.each_with_index do |ele, idx2|
          if [idx1, idx2] == @cursor.cursor_pos
            print ele.to_s.colorize(:green)
          else
            print ele.to_s
          end
          print " | "
        end
        puts
      end
      puts "-------------------------------"
    end

  end

end

board = Board.new
d = Display.new(board)
d.render

