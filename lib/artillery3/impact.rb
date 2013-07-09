module Artillery3
  class Impact
    def initialize shot, world
      @shot = shot
      @world = world
    end

    def position
      position = @shot.velocity * @shot.velocity * Math.sin(2 * @shot.angle) / 9.81
      position.ceil
    end

    def collisioned?
      @world.collisionables.each do |collisionable|
        if collisionable.x == position
          return true
        end
      end

      return false
    end

  end
end
