require 'spec_helper'
require './lib/string/palindrome_permutation'
# Reference: https://www.interviewcake.com/question/ruby/permutation-palindrome
#
describe 'determine if a string is a palindrome' do

  context 'when the string is a valid permutation1' do
    before do
      @palindrome = PalindromePermutation.new("aabcc")
    end

    it 'should indicate that it is a palindrome 1' do
      expect(@palindrome.is_palindrome_permutation?).to eq true
    end
  end

  context 'when the string is a valid permutation 2' do
    before do
      @palindrome = PalindromePermutation.new("aabbcc")
    end

    it 'should indicate that it is a palindrome' do
      expect(@palindrome.is_palindrome_permutation?).to eq true
    end
  end

  context 'when the string is not a valid palindrome 1' do
    before do
      @palindrome = PalindromePermutation.new("aabc")
    end

    it 'should indicate that it is a palindrome' do
      expect(@palindrome.is_palindrome_permutation?).to eq false
    end
  end

  context 'when the string is not a valid palindrome 2' do
    before do
      @palindrome = PalindromePermutation.new("abc")
    end

    it 'should indicate that it is a palindrome' do
      expect(@palindrome.is_palindrome_permutation?).to eq false
    end
  end

end

