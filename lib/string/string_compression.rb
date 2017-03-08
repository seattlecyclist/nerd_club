class StringCompression

  def compress(str)
    result = ''
    current_str = str.chars.first
    count = 0
    str.chars.each do |c|
      if c != current_str
        result += "#{current_str}#{count}"
        current_str = c
        count = 0
      end
      count += 1
    end

    # add last element
    result += "#{current_str}#{count}"

    (str.length <= result.length ? str : result)
  end
end