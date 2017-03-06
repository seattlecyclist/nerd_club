require 'spec_helper'
require './lib/bst/binary_tree_node'

# Reference: https://www.interviewcake.com/question/ruby/second-largest-item-in-bst
#
describe 'within a binary search tree' do

  context 'when the second largest is in the tree' do
    before do
      # Create a simple tree. Balance does not matter for this question
      @root = BinaryTreeNode.new(5)
      @node4 = @root.insert_left(4)
      @node6 = @root.insert_right(6)
      @node7 = @node6.insert_right(7)
      #     5
      #    / \
      #   4   6
      #        \
      #         7
     end

    # start by finding the largest item
    it 'should find the LARGEST item' do
      expect(@root.find_largest).to be @node7
    end

    # start by finding the largest item
    it 'should find the SECOND largest item' do
      expect(@root.find_second_largest).to be @node6
    end
  end

  context 'when the second largest is down a separate subtree'  do
    before do
      # Create a simple tree. Balance does not matter for this question
      #     5
      #    / \
      #   4   9
      #      / \
      #     8   13
      #        /
      #       11
      #       / \
      #      10  12
      @root = BinaryTreeNode.new(5)
      @node4 = @root.insert_left(4)
      @node9 = @root.insert_right(9)
      @node8 = @node9.insert_left(8)
      @node13 = @node9.insert_right(13)
      @node11 = @node13.insert_left(11)
      @node10 = @node11.insert_left(10)
      @node12 = @node11.insert_right(12)
    end

    # start by finding the largest item
    it 'should find the LARGEST item' do
      expect(@root.find_largest).to be @node13
    end

    # start by finding the largest item
    it 'should find the SECOND largest item' do
      expect(@root.find_second_largest).to be @node12
    end

  end
end
