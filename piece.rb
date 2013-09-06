class Piece
  def initialize(piece, color)
    @piece = piece
    @color = color
  end

  def symbol
    case @piece
    when :rook
      'R'
    when :knight
      'N'
    when :bishop
      'B'
    when :queen
      'Q'
    when :king
      'K'
    when :pawn
      'P'
    end
  end

  def symbol_with_color
    if @color == :black
      symbol.downcase
    else
      symbol.upcase
    end
  end
end
