class Board

    def initialize
        @rows = [
            Array.new(8,Piece.new()),
            Array.new(8,Piece.new()),
            Array.new(8,NullPiece.new()),
            Array.new(8,NullPiece.new()),
            Array.new(8,NullPiece.new()),
            Array.new(8,NullPiece.new()),
            Array.new(8,Piece.new()),
            Array.new(8,Piece.new()),
        ]

        [
            Array.new(8,'P'),
            Array.new(8,'P'),
            Array.new(8,'E'),
            Array.new(8,'E'),
            Array.new(8,'E'),
            Array.new(8,'E'),
            Array.new(8,'P'),
            Array.new(8,'P'),
        ]
        

    end





end