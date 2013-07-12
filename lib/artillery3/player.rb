module Artillery3
  class Player
    attr_accessor :position

    def initialize game
      @game = game
    end

    def shoot angle, velocity
      raise "Not your turn #{self}" unless @game.my_turn?(self)

      shot = Shot.new(angle, velocity, self)
      @game.world.impacts << Impact.new(shot, @game.world)
    end

  end
end
