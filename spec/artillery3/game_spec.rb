require 'spec_helper'

describe Artillery3::Game do
  context 'A two players game' do
    subject do
      Artillery3::Game.new 2
    end

    let(:first_player) { subject.players.first }
    let(:second_player) { subject.players.last }

    before do
      first_player.position = 20
      second_player.position = 200
    end

    it 'should not allow two consecutive shots from the same player' do
      expect(subject.turns.size).to eq 1
      expect(subject.turns.last.my_turn?(first_player)).to be_true
      expect(subject.turns.last.my_turn?(second_player)).to be_true

      first_player.shoot 20, 50

      expect(subject.impacts.size).to eq 1
      expect(subject.impacts.last.position).to eq 190
      expect(subject.impacts.last.collisioned?).to be_false

      expect(subject.turns.size).to eq 1
      expect(subject.turns.last.my_turn?(first_player)).to be_false
      expect(subject.turns.last.my_turn?(second_player)).to be_true

      expect { subject.players.first.shoot 20, 50 }.to raise_error
    end
  end
end
