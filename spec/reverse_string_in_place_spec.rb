require 'spec_helper'

# Reference: https://www.interviewcake.com/question/ruby/reverse-string-in-place
#
describe 'reverse a string in place' do

  it 'should reverse the string' do
    expect(reverse("dog")).to be("god")
  end

  it 'should reverse the sentence' do
    expect(reverse("a wise word")).to be("drow esiw a")
  end

end

def reverse(word)
  #implement
end
