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

  it 'works with empty strings' do
    expect(reverse("")).to eq("")
  end

  it 'works with even length strings' do
    expect(reverse("hello!")).to eq("!olleh")
  end

end

def reverse(word)
  last_index = word.length - 1
  0.upto(last_index / 2) do |i|
    word[i], word[last_index - i] = word[last_index - i], word[i]
  end

  word
end

def better_inplace_reverse(str)
  str.reverse!
end
