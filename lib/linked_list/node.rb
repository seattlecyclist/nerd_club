class Node

  attr_accessor :next, :value

  def initialize(value)
    @value = value
  end

  def append_to_tail(value)
    node = self
    # advance to the last node
    while(node.next)
      node = node.next
    end

    new_node = Node.new(value)

    node.next = new_node

    new_node
  end

  def delete
    #implement
  end

  def has_cycle?
    # implement
    false
  end
end