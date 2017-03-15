class Node
  attr_accessor :left, :right, :char, :is_end

  def initialize(left, right, char, is_end)
    @left = left
    @right = right
    @char = char
    @is_end = is_end
  end
end