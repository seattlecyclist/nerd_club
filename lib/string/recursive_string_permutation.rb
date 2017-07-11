class RecursiveStringPermutation

  def permute(s)
    if s.length <= 1
      return  Set.new([s])
    end

    permutations_without_last = permute(s[0..-2])

    last_char = s.chars.last
    all_permutations = Set.new
    permutations_without_last.each do |perm|
      (perm.length + 1).times do |i|
        all_permutations << "#{perm[0...i]}#{last_char}#{perm[i...perm.length]}"
      end
    end

    all_permutations
  end
end