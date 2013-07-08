require 'spec_helper'

describe Artillery3::Game do
  context 'A two players game' do
    subject do
      Artillery3::Game.new 2
    end

    before do
      subject.players.first.position = 20
      subject.players.last.position = 200
    end

    specify do
      subject.players.first.shoot 20, 50
      expect(subject.impacts.size).to eq 1
      expect(subject.impacts.last.position).to eq 190
      expect(subject.impacts.last.collisioned?).to be_false
    end
  end
end
