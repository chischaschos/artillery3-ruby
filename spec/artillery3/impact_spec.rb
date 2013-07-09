require 'spec_helper'

describe Artillery3::Impact do

  subject do
    Artillery3::Impact.new shot, world
  end

  let(:shot) do
    Artillery3::Shot.new 20, 30
  end

  context "when receiving a 20 degree shot in an empty world" do
    let(:world) do
      Artillery3::World.new
    end

    it 'should have an impact position' do
      expect(subject.position).to eq 69
    end

    it 'should know whenever a collision occurred' do
      expect(subject.collisioned?).to be_false
    end
  end

  context "when receiving a 20 degree shot in a world with one collisionables" do
    let(:world) do
      world = Artillery3::World.new
      world.collisionables << Artillery3::Collisionable.new(69, 0)
      world
    end

    it 'should have an impact position' do
      expect(subject.position).to eq 69
    end

    it 'should know whenever a collision occurred' do
      expect(subject.collisioned?).to be_true
    end
  end

end
