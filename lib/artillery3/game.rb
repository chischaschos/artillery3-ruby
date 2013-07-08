module Artillery3
  class Game
    attr_accessor :players

    def initialize players_number
      @players = []
      @world = Artillery3::World.new

      players_number.times do
        @players << Player.new(@world)
      end
    end

    def impacts
      @world.impacts
    end
  end
end
