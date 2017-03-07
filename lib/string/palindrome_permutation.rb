class PalindromePermutation

  def initialize(str)
    @str = str
  end

  def is_palindrome_permutation?
    odds = Set.new
    @str.chars.each do |c|
      if odds.include? c
        odds.delete c
      else
        odds << c
      end
    end

    odds.size <= 1
  end
end