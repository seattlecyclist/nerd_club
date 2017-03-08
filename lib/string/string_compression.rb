class StringCompression

  def compress(str)
    str.chars.group_by { |c| c }.map { |l, items| "#{l}#{items.length}" }.join
  end
end