require 'spec_helper'
require './lib/string/string_compression'

# References: Cracking The Coding Interview Question 1.6(pg91)
#
describe 'compresses a string' do

  context 'when the string can be compressed' do
    before do
      @compresser = StringCompression.new
    end

    it 'should compress right' do
      expect(@compresser.compress('aaabbbccdddd')).to eq 'a3b3c2d4'
    end

    it 'should compress right' do
      expect(@compresser.compress('aAbccdddd')).to eq 'a1A1b1c2d4'
    end
  end

  context 'when the string can not be compressed' do
    before do
      @compresser = StringCompression.new
    end

    it 'should return the original' do
      expect(@compresser.compress('abc')).to eq 'abc'
    end

  end

end

