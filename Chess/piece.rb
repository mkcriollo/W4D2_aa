require_relative "board.rb"

class Piece
    def initialize(board)
        @board = board
       
    end

    def moves
        valid_moves = []

        # board1 = Board.new

        @board.rows.each_with_index do |row, idx1|
            row.each_with_index do |ele, idx2|
                valid_moves << [idx1,idx2] if @board[[idx1,idx2]].class == NullPiece 
            end
        end
        valid_moves
    end


end