require 'spec_helper'
require './lib/bst/binary_tree_node'

# Reference:
#
describe 'with a sorted array build a balanced BST' do
  before do
    #
    #
    #         5
    #        /  \
    #       2    7
    #      / \  / \
    #     1  3 6   8
    #
    #
    #
    @array = [1, 2, 3, 5, 6, 7, 8]
    @root_node = BinaryTreeNode.build_tree(@array)
  end

  it 'should have the correct root node' do
    expect(@root_node.value).to be(5)
  end

  it 'should have the correct first left node' do
    expect(@root_node.left.value).to be(2)
  end

  it 'should have the correct first right node' do
    expect(@root_node.right.value).to be(7)
  end

  it 'should have the correct last right node' do
    expect(@root_node.right.right.value).to be(8)
  end

end
