require 'spec_helper'
require './lib/string/string_rotation'

# [GeeksForGeeks](http://www.geeksforgeeks.org/a-program-to-check-if-strings-are-rotations-of-each-other/)
# Also Cracking The Coding Interview 1.9(pg91)

describe 'two strings' do

  context 'when the two strings are valid rotations' do

    before do
      @rotator = StringRotation.new "seattle"
    end

    it 'should report as a valid rotation' do
      expect(@rotator.is_rotation?("ttlesea")).to eq true
    end
  end

  context 'when the two strings are not valid rotations' do

    before do
      @rotator = StringRotation.new "seattle"
    end

    it 'should report as NOT a valid rotation' do
      expect(@rotator.is_rotation?("kettle")).to eq false
    end
  end

  context 'when the two strings are empty' do

    before do
      @rotator = StringRotation.new ""
    end

    it 'should report as NOT a valid rotation' do
      expect(@rotator.is_rotation?("")).to eq false
    end
  end

end

