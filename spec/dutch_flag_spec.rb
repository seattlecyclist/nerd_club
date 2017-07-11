require 'spec_helper'

describe 'sorting an array of 0s, 1s, and 2s' do
  it 'sorts an unsorted array correctly' do
    expect(sort([1,2,1,0,2,0])).to eq [0, 0, 1, 1, 2, 2]
  end
end

def sort(array)
  low = 0
  mid = 0
  high = array.length - 1

  while mid <= high
    case array[mid]
      when 0
        swap(low, mid, array)
        low += 1
        mid += 1
      when 1
        mid += 1
      when 2
        swap(high, mid, array)
        high -= 1
    end
  end
  array
end

def swap(target, source, array)
  temp = array[target]
  array[target] = array[source]
  array[source] = temp
end

