class BracketMatcher
  OPEN = '({['
  CLOSED = ')}]'

  # Supported bracket types:
  # * parentheses or "round brackets" ( )
  # * "square brackets" or "box brackets" [ ]
  # * braces or "curly brackets" { }
  # ie: '({[]})'
  def initialize(str)
    @str = str
  end

  def is_balanced?
    stack = []

    @str.chars.each do |c|
      if OPEN.include? c
        stack.push c
      elsif CLOSED.include?(c) && !stack.last
        return false
      elsif CLOSED.include?(c) && is_closing_bracket?(stack.last, c)
        return false if stack.empty?
        stack.pop
      end
    end

    stack.empty?
  end

  # find the position of the bracket for the opening bracket at the provided position
  # bracket: the opening for which to find the associated close
  # the position of the opening bracket 0 based index
  def find_closing(bracket, position)
    stack = []
    @str[position..-1].chars.each_with_index do |c, i|
      if OPEN.include? c
        stack.push c
      elsif CLOSED.include?(c) && is_closing_bracket?(stack.last, c)
        stack.pop
        return position + i if stack.empty?
      end
    end
  end

  private

  def is_closing_bracket?(open, close)
    OPEN.index(open) == CLOSED.index(close)
  end
end