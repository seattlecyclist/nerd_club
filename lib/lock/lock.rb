class Lock

  def combinations
    result = []
    (1..12).map(&:to_s).each do |m|
      (1..31).map(&:to_s).each do |d|
        combination = "#{m.rjust(2, "0")}#{d.rjust(2, "0")}"
        result << combination if (combination.chars & combination.chars).size == 4
      end
    end

    result
  end
end