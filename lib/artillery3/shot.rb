module Artillery3
  class Shot

    attr_reader :angle, :velocity, :player

    def initialize angle, velocity, player
      @angle = angle
      @velocity = velocity
      @player = player
    end

  end
end
