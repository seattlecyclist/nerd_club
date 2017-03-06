class BinaryTreeNode

  attr_accessor :value,:left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

  def insert_left(value)
    @left = BinaryTreeNode.new(value)
  end

  def insert_right(value)
    @right = BinaryTreeNode.new(value)
  end

  def find_second_largest(node = self)

  end

  def find_largest(node = self)

  end
end