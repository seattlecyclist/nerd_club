class StringCompression

  def compress(str)
    result = ''
    # current_str = str.chars.first
    count = 0
    # str.chars.each do |c|
    str.chars.each_with_index do |c, i|
      count += 1
      if c != str[i + 1]
        result += "#{c}#{count}"
        count = 0
      end
    end

    (str.length <= result.length ? str : result)
  end
end