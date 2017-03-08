require 'spec_helper'
require './lib/linked_list/node'

# [InterviewCake](https://www.interviewcake.com/question/ruby/delete-node)
# Also Cracking The Coding Interview 2.3(pg94)

describe 'a singularly linked list' do

  context 'deleting a node in the middle' do

    before do
      @head = Node.new(1)
      @second = @head.append_to_tail(2)
      @third = @head.append_to_tail(3)
      @last = @head.append_to_tail(4)

      @second.delete()
    end

    it 'should delete value' do
      expect(@head.next.value).to eq @third.value
    end

    it 'should link up the nodes right' do
      expect(@head.next.next).to be @last
    end
  end
end

