require 'spec_helper'

describe Artillery3::World do
  it 'keeps records of all impacts' do
    expect(subject.impacts.size).to eq 0
  end
end


