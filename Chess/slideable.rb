module Slideable
    HORIZONTAL_DIRS = [
        [0,  1],  #right
        [0, -1],  #left
        [1,  0],  #up
        [-1, 0]   #down
    ].freeze

    DIAGONAL_DIRS = [
        [1,  1],   # up + left
        [1, -1],  # up + right
        [-1, 1], # down + right
        [-1,-1] # down + left
    ].freeze

    def horizontal_dirs
        @HORIZONTAL_DIRS
    end

    def diagonal_dirs
        @DIAGONAL_DIRS
    end

    def moves
        moves = []
        moves_dirs.each do |dir|
            moves << grow_unblocked_moves_in_dir(dir[0],dir[1])
        end
        moves.flatten(1)
    end

    def grow_unblocked_moves_in_dir(dx,dy)
        moves = []
        row, column = pos
        until @board[[row,column]].class == Piece || !board.valid_pos([row,column]) 
            row += dx
            column += dy
            moves << [row,column]
        end 
        if board[[row,column]].color != self.color
            moves << [row,column]
        end
        moves
    end


end




#   def moves
#         valid_moves = []

#         # board1 = Board.new

#         @board.rows.each_with_index do |row, idx1|
#             row.each_with_index do |ele, idx2|
#                 valid_moves << [idx1,idx2] if @board[[idx1,idx2]].class == NullPiece 
#             end
#         end
#         valid_moves
#     end