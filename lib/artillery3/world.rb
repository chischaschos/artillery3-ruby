module Artillery3
  class World
    attr_reader :impacts, :collisionables

    def initialize
      @impacts = []
      @collisionables = []
    end
  end
end
