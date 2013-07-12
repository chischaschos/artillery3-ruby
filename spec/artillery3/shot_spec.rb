require 'spec_helper'

describe Artillery3::Shot do
  subject do
    Artillery3::Shot.new 50, 10, player
  end

  let(:world) do
    Artillery3::World.new
  end

  let(:player) do
    Artillery3::Player.new world
  end

  specify do
    expect(subject.angle).to eq 50
    expect(subject.velocity).to eq 10
  end

end
