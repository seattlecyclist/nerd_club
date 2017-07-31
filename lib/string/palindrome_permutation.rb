class PalindromePermutation

  def initialize(str)
    @str = str
  end

  def is_palindrome_permutation?
    return @str.chars.group_by{|c| c}.map{|h,v| v.length%2}.reduce(:+) < 2
  end

end
