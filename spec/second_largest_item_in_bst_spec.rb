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
      #   4   7
      #      / \
      #     8   12
      #        /
      #       10
      #       / \
      #      9  11
      @root = BinaryTreeNode.new(5)
      @node4 = @root.insert_left(4)
      @node7 = @root.insert_right(7)
      @node8 = @node7.insert_left(8)
      @node12 = @node7.insert_right(12)
      @node10 = @node12.insert_left(10)
      @node9 = @node10.insert_left(9)
      @node11 = @node10.insert_right(11)
    end

    # start by finding the largest item
    it 'should find the LARGEST item' do
      expect(@root.find_largest).to be @node12
    end

    # start by finding the largest item
    it 'should find the SECOND largest item' do
      expect(@root.find_second_largest).to be @nod11
    end

  end
end
