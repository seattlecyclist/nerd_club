class StringRotation

  def initialize(str)
    @str = str
  end

  def is_rotation?(other)
    "#{other}#{other}".include? @str
  end
end