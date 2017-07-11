class StringRotation

  def initialize(str)
    @str = str
  end

  def is_rotation?(other)
    return false unless other.length == @str.length && @str.length > 0

    "#{other}#{other}".include? @str
  end
end