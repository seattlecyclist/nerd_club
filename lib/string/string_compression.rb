class StringCompression

  def compress(str)
    result = []
    # current_str = str.chars.first
    count = 0
    # str.chars.each do |c|
    str.chars.each_with_index do |c, i|
      count += 1
      if c != str[i + 1]
        result << "#{c}#{count}"
        count = 0
      end
    end
    result_str = result.join
    (str.length <= result_str.length ? str : result_str)
  end
end