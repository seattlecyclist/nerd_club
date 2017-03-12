class StringRotation

  def initialize(str)
    @str = str
  end

  def is_rotation?(other)
    return false if other.length != @str.length || @str.empty?

    (0..@str.length-1).each do |i|
      (0..@str.length-1).each do |j|
        og_index = (i+j)%@str.length

        if @str[og_index] != other[j]
          break
        elsif j == @str.length-1
          return true
        end
      end
    end

    false
  end
end
