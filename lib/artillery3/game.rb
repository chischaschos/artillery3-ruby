module Artillery3
  class Game
    attr_reader :players, :turns, :world

    def initialize players_number
      @players = []

      @world = Artillery3::World.new
      @world.impacts.add_observer self

      @turns = [ Artillery3::Turn.new ]

      players_number.times do
        @players << Player.new(self)
      end
    end

    def impacts
      @world.impacts
    end

    def update impact
      @turns.last.moves << impact.shot.player
    end

    def my_turn? player
      @turns.last.my_turn? player
    end
  end
end
