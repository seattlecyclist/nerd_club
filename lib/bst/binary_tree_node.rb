class BinaryTreeNode

  attr_accessor :value,:left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

  class << self
    def build_tree(array)
      #implement
    end
  end

  def insert_left(value)
    @left = BinaryTreeNode.new(value)
  end

  def insert_right(value)
    @right = BinaryTreeNode.new(value)
  end

  def find_second_largest(node = self)
    # must have a node and the node must have a second level... after all we are trying to find
    # the second largest value
    return nil if node == nil || (node.left == nil || node.right == nil)

    parents = []
    largest = find_largest(node, parents)
    # if our largest does not have a left, then the second largest is the parent of the largest
    if largest.left == nil
      return parents.last
    else  #else the largest is down the largest of the left branch
      return find_largest(largest.left, parents)
    end
  end

  # to reuse the find_largest... and be able to get the parent of it, i added a parents array that
  # can get built up each recursive call
  def find_largest(node = self, parents = [])
    return nil if node == nil

    match = node
    if node.right
      parents << match
      match = find_largest node.right, parents
    end

    match
  end
end