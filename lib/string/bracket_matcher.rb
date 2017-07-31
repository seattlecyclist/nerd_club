class BracketMatcher

  # Supported bracket types:
  # * parentheses or "round brackets" ( )
  # * "square brackets" or "box brackets" [ ]
  # * braces or "curly brackets" { }
  def initialize(str)
    @str = str
  end

  def is_balanced?

    stack = []

    @str.chars.each do |char|
      if ("[({").include?(char)
        stack << char
      elsif ("])}").include?(char)
        new_char = stack.pop
        return false if new_char.nil? || new_char != convert_closing(char)
      end
    end

    return stack.empty?
  end

  # find the position of the bracket for the opening bracket at the provided position
  # bracket: the opening for which to find the associated close
  # the position of the opening bracket 0 based index
  def find_closing(bracket, position)
    # Do we care of its balanced?
    # Do we assume valid input?

    stack = [bracket]
    start = position + 1

    @str.chars[start..-1].each_with_index do |char, i|
      if ("[({").include?(char)
        stack << char
      elsif ("])}").include?(char)
        new_char = stack.pop
        return -1 if new_char != convert_closing(char)
        return start + i if stack.empty?
      end
    end

    return -1
  end

  private


  def convert_closing char
    convert = {
      "]"=> "[",
      ")"=> "(",
      "}"=> "{",
    }

    return convert[char]
  end
end
