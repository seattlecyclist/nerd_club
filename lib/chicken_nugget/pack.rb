class Pack

  def initialize(sizes)
    @sizes = sizes.sort
  end

  def buy?(amount)

    @sizes.each do |size|
      return true if amount % size == 0

      while amount / size > 0

        if amount / size > 0
          amount = amount % size

        end
      end
    end
    puts "The amount: #{amount}"
    amount == 0
  end
end