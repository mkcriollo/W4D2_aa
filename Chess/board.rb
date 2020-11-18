require_relative 'piece'
require_relative 'nullpiece'
require_relative 'piece'
class Board
attr_accessor :rows
    def initialize
        @rows = [
            Array.new(8,Piece.new(self)),
            Array.new(8,Piece.new(self)),
            Array.new(8,NullPiece.new()),
            Array.new(8,NullPiece.new()),
            Array.new(8,NullPiece.new()),
            Array.new(8,NullPiece.new()),
            Array.new(8,Piece.new(self)),
            Array.new(8,Piece.new(self)),
        ]       
    end

    def move_piece(start_pos, end_pos)
        raise "That is not a valid move" if (!valid_pos?(start_pos) || !valid_pos?(end_pos))
        raise "Start position is empty" if self[start_pos].class == NullPiece 
        raise "Cannot move here" if self[end_pos].class == Piece
        self[start_pos], self[end_pos] = NullPiece.new(), self[start_pos]     
    end

    def [](pos)
        row, column = pos
        @rows[row][column]
    end

    def []=(pos,val)
        row, column = pos
        @rows[row][column] = val
    end

    def valid_pos?(pos)
        pos.all {|coord| coord.between?(0,7)}
    end

end