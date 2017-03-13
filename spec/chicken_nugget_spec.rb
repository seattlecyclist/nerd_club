require 'spec_helper'
require './lib/chicken_nugget/pack'

describe Pack do
  context 'buy?' do
    subject { Pack.new([6, 9, 20]) }

    before do
    end

    it 'should not be able to buy 17' do
      expect(subject.buy?(17)).to be false
    end

    it 'should be able to buy 24' do
      expect(subject.buy?(24)).to be true
    end

    it 'should be able to buy 21' do
      expect(subject.buy?(21)).to be true
    end

    it 'should be able to buy 12' do
      expect(subject.buy?(12)).to be true
    end

  end

end

