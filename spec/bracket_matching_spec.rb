require 'spec_helper'
require './lib/string/bracket_matcher'

describe 'a bracket matcher can determine if a string has balanced brackets' do
  context 'when given a string with balanced brackets' do
    before do
      @matcher = BracketMatcher.new("({[]}) ([]) {}")
    end

    it 'should indicate that the string is balanced?' do
      expect(@matcher.is_balanced?).to eq true
    end
  end

  context 'when given a string with UN-balanced open brackets' do
    before do
      @matcher = BracketMatcher.new("({[]}) (")
    end

    it 'should indicate that the string is balanced?' do
      expect(@matcher.is_balanced?).to eq false
    end
  end

  context 'when given a string with the right number of brackets but out of order' do
    before do
      @matcher = BracketMatcher.new("({[]}) [(])")
    end

    it 'should indicate that the string is balanced?' do
      expect(@matcher.is_balanced?).to eq false
    end
  end

  context 'when given a string with UN-balanced closed brackets' do
    before do
      @matcher = BracketMatcher.new("({[]})}")
    end

    it 'should indicate that the string is balanced?' do
      expect(@matcher.is_balanced?).to eq false
    end
  end

end

# this references: https://www.interviewcake.com/question/ruby/matching-parens
describe 'a bracket matcher can find a matching closing bracket' do
  context 'a balanced string' do
    before do
      @matcher = BracketMatcher.new("({[()]})")
    end

    it 'should find the last closing parenthesis' do
      expect(@matcher.find_closing("(", 0)).to eq 7
    end

    it 'should find the middle closing parenthesis' do
      expect(@matcher.find_closing("(", 3)).to eq 4
    end

  end

end