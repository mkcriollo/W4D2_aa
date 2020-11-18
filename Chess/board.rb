require_relative 'piece'
require_relative 'nullpiece'
require_relative 'king'
require_relative 'queen'
require_relative 'pawn'
require_relative 'bishop'
require_relative 'rook'
require_relative 'knight'

class Board
attr_accessor :rows
    def initialize
        @rows = [
            create_pieces("white"),
            Array.new(8,NullPiece.new()),
            Array.new(8,NullPiece.new()),
            Array.new(8,NullPiece.new()),
            Array.new(8,NullPiece.new()),
            create_pieces("black")
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

    def  create_pieces(color)
        if color == "white"
            row_white = [[Rook.new(self),Knight.new(self),Bishop.new(self),Queen.new(self),
                  King.new(self),Bishop.new(self),Knight.new(self),Rook.new(self)],Array.new(8,Pawn.new(self))]

            row_white.each_with_index do |sub,idx|
                sub.each_with_index do |piece, idx2|
                    piece.color = 'white'
                    piece.pos = [idx,idx2]
                end
            end
            return row_white.flatten(1)
        elsif color == "black"
            row_black = [Array.new(8,Pawn.new(self)),[Rook.new(self),Knight.new(self),Bishop.new(self),Queen.new(self),
                        King.new(self),Bishop.new(self),Knight.new(self),Rook.new(self)]]

            row_black.each_with_index do |sub,idx|
                sub.each_with_index do |piece, idx2|
                    piece.color = 'black'
                    piece.pos = [idx + 6,idx2]
                end
            end
            return row_black.flatten(1)
        end
    end


    

end