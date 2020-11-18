require_relative "piece"
require_relative "slideable"
class King < Piece
    include Slideable
    def symbol
        '♕'.colorize(color)
    end

    protected

    def move_dirs
        horizontal_dirs
    end
end