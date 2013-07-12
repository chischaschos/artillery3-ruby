require 'observer'

class ImpactsArray < Array
  include Observable

  def << impact
    result = super impact
    changed
    notify_observers impact
    result
  end

end

module Artillery3
  class World
    attr_reader :impacts, :collisionables

    def initialize
      @impacts = ImpactsArray.new
      @collisionables = []
    end
  end
end
