module Artillery3
  class World
    def initialize
      @impacts = []
    end

    def impacts
      @impacts
    end

    def create_shot shot
      @impacts << Impact.new(shot, self)
    end

  end
end
