require 'piece'

class Board
  def setup
    @board = Hash.new

    @board['a1'] = Piece.new(:rook,   :white)
    @board['b1'] = Piece.new(:knight, :white)
    @board['c1'] = Piece.new(:bishop, :white)
    @board['d1'] = Piece.new(:queen,  :white)
    @board['e1'] = Piece.new(:king,   :white)
    @board['f1'] = Piece.new(:bishop, :white)
    @board['g1'] = Piece.new(:knight, :white)
    @board['h1'] = Piece.new(:rook,   :white)

    @board['a2'] = Piece.new(:pawn,   :white)
    @board['b2'] = Piece.new(:pawn,   :white)
    @board['c2'] = Piece.new(:pawn,   :white)
    @board['d2'] = Piece.new(:pawn,   :white)
    @board['e2'] = Piece.new(:pawn,   :white)
    @board['f2'] = Piece.new(:pawn,   :white)
    @board['g2'] = Piece.new(:pawn,   :white)
    @board['h2'] = Piece.new(:pawn,   :white)

    @board['a7'] = Piece.new(:pawn,   :black)
    @board['b7'] = Piece.new(:pawn,   :black)
    @board['c7'] = Piece.new(:pawn,   :black)
    @board['d7'] = Piece.new(:pawn,   :black)
    @board['e7'] = Piece.new(:pawn,   :black)
    @board['f7'] = Piece.new(:pawn,   :black)
    @board['g7'] = Piece.new(:pawn,   :black)
    @board['h7'] = Piece.new(:pawn,   :black)

    @board['a8'] = Piece.new(:rook,   :black)
    @board['b8'] = Piece.new(:knight, :black)
    @board['c8'] = Piece.new(:bishop, :black)
    @board['d8'] = Piece.new(:queen,  :black)
    @board['e8'] = Piece.new(:king,   :black)
    @board['f8'] = Piece.new(:bishop, :black)
    @board['g8'] = Piece.new(:knight, :black)
    @board['h8'] = Piece.new(:rook,   :black)
  end

  def show
    ranks = (1..8).to_a.reverse
    files = ('a'..'h').to_a
    ranks.each do |rank|
      puts "+-------------------------------+"
      files.each do |file|
        square = "#{file}#{rank}"
        piece  = @board[square]
        show_square(square, piece)
      end
      puts "|"
    end
    puts "+-------------------------------+"
  end

  def show_square(square, piece)
    # puts "PIECE: #{piece.inspect}"
    if piece.nil?
      display = ' '
    else
      display = piece.symbol_with_color
    end
    # puts "DISPLAY: #{display.inspect}"
    putc "|"
    putc " "
    putc display
    putc " "
  end
end



