require 'spec_helper'

describe Artillery3::Player do
  subject do
    Artillery3::Player.new game
  end

  let(:game) do
    Artillery3::Game.new 1
  end

  specify do
    expect(game.impacts.size).to eq 0
    subject.shoot 14, 14
    expect(game.impacts.size).to eq 1
  end

end
