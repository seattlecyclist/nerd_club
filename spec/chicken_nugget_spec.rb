require 'spec_helper'
require './lib/chicken_nugget/pack'

describe Pack do
  context 'buy?' do
    subject { Pack.new([3, 6, 9]) }

    before do
    end

    it 'should not be able to buy 20' do
      expect(subject.buy?(20)).to be false
    end


    it 'should be able to buy 21' do
      expect(subject.buy?(21)).to be false
    end

    it 'should be able to buy 12' do
      expect(subject.buy?(12)).to be false
    end

  end

end

