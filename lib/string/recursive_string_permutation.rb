class RecursiveStringPermutation

  def permute(str)
    return [str] if str.length < 2
    solution = []

    char = str[-1]
    perms = permute(str.chop)

    perms.each do |word|
      (0..word.length).each do |i|
        copy = word.clone
        solution << copy.insert(i, char)
      end
    end

    solution
  end
end
