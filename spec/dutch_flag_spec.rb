require 'spec_helper'

describe 'sorting an array of 0s, 1s, and 2s' do
  it 'sorts an unsorted array correctly' do
    expect(sort([1,2,1,0,2,0])).to eq [0, 0, 1, 1, 2, 2]
  end
end

def sort(array)
end


