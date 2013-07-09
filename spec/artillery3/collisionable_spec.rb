require 'spec_helper'

describe Artillery3::Collisionable do

  specify do
    collisionable = Artillery3::Collisionable.new 0, 20
    expect(collisionable.x).to eq 0
    expect(collisionable.y).to eq 20

  end
end
