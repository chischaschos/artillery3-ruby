require 'spec_helper'

describe Artillery3::Turn do
  subject do
    Artillery3::Turn.new
  end

  let(:player) do
    Artillery3::Player.new world
  end

  let(:world) do
    Artillery3::World.new
  end

  it "should be the player's turn if it has not played yet" do
    expect(subject.my_turn? player).to be_true
  end

  it "should NOT be the player's turn if it has not played yet" do
    subject.moves << player
    expect(subject.my_turn? player).not_to be_nil
  end
end
