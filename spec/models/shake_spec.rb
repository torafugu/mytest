require 'spec_helper'

describe Shake do
  it 'The first name of Shake must be First Shake.' do
    shake = FactoryGirl.create(:shake)
    expect(shake.name).to eq('First Shake')
  end
end
