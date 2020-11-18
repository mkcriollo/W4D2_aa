require_relative "piece"
require_relative "slideable"
class Knight < Piece
    include Slideable
    def symbol
        '♘'.colorize(color)
    end

    protected

    def move_dirs
        horizontal_dirs
    end
end