class DuffelBag

  # weight to value
  # [ [7, 160], [3, 90], [2, 15] ]
  def max_duffel_bag_value(cake_arrays, capacity)

    #sort by the $$$/Weight ratio
    cakes = cake_arrays.map {|a| [a[0], a[1], a[0] / a[1].to_f] }.sort {|a, b| a[2] <=> b[2]}

    result = Hash.new(0)
    result_value = 0
    cakes.each do |cake|
      amt = capacity / cake[0]
      if amt > 0
        capacity = capacity % cake[0]
        result[cake[0]] += 1
        result_value += amt * cake[1]
      end
    end

    result
  end
end