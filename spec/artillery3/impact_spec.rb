require 'spec_helper'

describe Artillery3::Impact do
  context "when receiving a 20 degree shot in an empty world" do
    let(:shot) do
      Artillery3::Shot.new 20, 30
    end

    let(:world) do
      Artillery3::World.new
    end

    subject do
      Artillery3::Impact.new shot, world
    end

    it 'should have an impact position' do
      expect(subject.position).to eq 69
    end

    it 'should know whenever a collision occurred' do
      expect(subject.collisioned?).to be_false
    end
  end

end
