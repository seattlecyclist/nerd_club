class Lock

  def combinations
    combos = []

    (1..12).each do |month|
      (1..31).each do |day|
        combo = "#{month.to_s.rjust(2,"0")}#{day.to_s.rjust(2,"0")}"
        combos << combo if combo.chars.uniq.length == 4
      end
    end

    combos
  end
end
