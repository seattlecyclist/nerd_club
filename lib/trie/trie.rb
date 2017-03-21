class Trie
  attr_accessor :root

  def insert(word)
    char = word[-1]
    return if char.nil?

    node = root
    while !char.nil?
      if !node.contains(char)
        node = node.insert(char)
      end
      node = node.get(char)
    end
    node.insert(Node.new(nil, nil, nil, true))
  end

  private
  def insert_node(char)
    if @root.nil?
      @root = Node.new(char)
      return
    end

    @root.insert(char)
  end
end