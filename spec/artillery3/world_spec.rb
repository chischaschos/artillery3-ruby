require 'spec_helper'

describe Artillery3::World do
  it 'should keep records of all impacts' do
    expect(subject.impacts.size).to eq 0
  end

  it 'may contain collisionables' do
    subject.collisionables << Artillery3::Collisionable.new(0, 20)
  end
end


