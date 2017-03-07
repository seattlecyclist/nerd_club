class BinaryTreeNode

  attr_accessor :value, :left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

  class << self
    def build_tree(array)
      return nil if array.empty?

      middle = array.length / 2
      left = array.slice(0, middle)
      right = array.slice(middle + 1, middle)

      BinaryTreeNode.new(
        array[middle],
        self.build_tree(left),
        self.build_tree(right)
      )
    end
  end

  def insert_left(value)
    @left = BinaryTreeNode.new(value)
  end

  def insert_right(value)
    @right = BinaryTreeNode.new(value)
  end

  def find_second_largest(node = self)
    return nil if right.nil? && left.nil?
    return left.find_largest if right.nil?

    r_second = right.find_second_largest
    if r_second.nil? || r_second.value < value
      self
    else
      r_second
    end
  end

  def find_largest(node = self)
    return self if right.nil?

    right.find_largest
  end
end
