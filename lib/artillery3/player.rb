module Artillery3
  class Player
    attr_accessor :position

    def initialize world
      @world = world
    end

    def shoot angle, velocity
      @world.create_shot Shot.new(angle, velocity)
    end

  end
end
