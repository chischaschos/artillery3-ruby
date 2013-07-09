module Artillery3
  class Shot

    attr_reader :angle, :velocity

    def initialize angle, velocity
      @angle = angle
      @velocity = velocity
    end

  end
end
