class BinaryTreeNode

  attr_accessor :value,:left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

  class << self
    def build_tree(array)
      if (array.length == 1)
        return BinaryTreeNode.new(array[0])
      end

      midpoint = array.length/2
      value = array[midpoint]
      left = build_tree(array[0...midpoint])
      right = build_tree(array[midpoint+1..array.length-1])

      return BinaryTreeNode.new(value, left, right)
    end
  end

  def insert_left(value)
    @left = BinaryTreeNode.new(value)
  end

  def insert_right(value)
    @right = BinaryTreeNode.new(value)
  end

  def find_second_largest
    #implement
    prev_node = node
    while(node.right) do
      prev_node = node
      node = node.right
    end

    if node.left
      largest = node.left.find_largest
      return prev_node.value > largest.value ? prev_node : largest
    else
      return prev_node
    end
  end

  def find_largest
    #implement
    if node.right == nil
      return node
    else
      return node.find_largest(node.right)
    end
  end
end
