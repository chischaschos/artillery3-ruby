require 'spec_helper'

describe Artillery3::Shot do
  subject do
    Artillery3::Shot.new 50, 10
  end

  specify do
    expect(subject.angle).to eq 50
    expect(subject.velocity).to eq 10
  end

end
