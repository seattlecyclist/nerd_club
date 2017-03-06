require 'spec_helper'

# Reference: https://www.interviewcake.com/question/ruby/reverse-string-in-place
#
describe 'reverse a string in place' do

  it 'should reverse the string' do
    expect(reverse("dog")).to eq("god")
  end

  it 'should reverse the sentence' do
    expect(reverse("a wise word")).to eq("drow esiw a")
  end

end

def reverse(word)
  left = 0
  right = word.length - 1

  # NOTE: you can not just loop through the chars of the word and swap in place
  # as this will effect the array your looping through
  while left < right
    word[left], word[right] = word[right], word[left]

    left += 1
    right -= 1
  end

  word
end
