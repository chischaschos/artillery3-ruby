module Artillery3
  class Turn

    attr_reader :moves

    def initialize
      @moves = []
    end

    def my_turn? player
      !@moves.include?(player)
    end
  end
end
