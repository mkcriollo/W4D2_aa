require_relative "piece"
require_relative "slideable"
class Pawn < Piece
    # include Steppable
    def symbol
        '♙'.colorize(color)
    end

    protected

    def move_dirs
        horizontal_dirs
    end
end