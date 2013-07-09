module Artillery3
  class Player
    attr_accessor :position

    def initialize world
      @world = world
    end

    def shoot angle, velocity
      shot = Shot.new(angle, velocity)
      @world.impacts << Impact.new(shot, @world)
    end

  end
end
