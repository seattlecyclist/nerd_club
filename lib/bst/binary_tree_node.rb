class BinaryTreeNode

  attr_accessor :value,:left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

  class << self
    def build_tree(array)
      return if array.empty?

      middle = array.length/2
      node = BinaryTreeNode.new(array[middle])
      node.left = BinaryTreeNode.build_tree(array[0...middle])
      node.right = BinaryTreeNode.build_tree(array[middle + 1..- 1])
      node
    end
  end

  def insert_left(value)
    @left = BinaryTreeNode.new(value)
  end

  def insert_right(value)
    @right = BinaryTreeNode.new(value)
  end

  def find_second_largest(node = self)
    #implement
  end

  def find_largest(node = self)
    #implement
  end
end