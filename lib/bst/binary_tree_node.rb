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
      right = build_tree(array[midpoint+1..array.length])

      return BinaryTreeNode.new(value, left, right)
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
