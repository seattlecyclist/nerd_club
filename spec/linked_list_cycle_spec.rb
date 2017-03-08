require 'spec_helper'
require './lib/linked_list/node'

# [InterviewCake](https://www.interviewcake.com/question/ruby/linked-list-cycles)
# Also all over the place

describe 'a singularly linked list' do

  context 'with a cycle' do
    before do
      @head = Node.new(1)
      @second = @head.append_to_tail(2)
      @third = @head.append_to_tail(3)
      @last = @head.append_to_tail(4)
      @last.next = @head #the cycle
    end

    it 'should indicate it has a cycle' do
      expect(@head.has_cycle?).to eq true
    end

    it 'should indicate it has a cycle even when starting in the middle' do
      expect(@second.has_cycle?).to eq true
    end
  end

  context 'without a cycle' do
    before do
      @head = Node.new(1)
      @second = @head.append_to_tail(2)
      @third = @head.append_to_tail(3)
      @last = @head.append_to_tail(4)
      # NO CYCLE
    end

    it 'should NOT indicate it has a cycle' do
      expect(@head.has_cycle?).to eq false
    end
  end
end

