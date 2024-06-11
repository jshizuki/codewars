def order_weight(strng)
  original_weights = strng.split(" ")
  original_weights_in_sum = []
  final_result = []

  original_weights.each { |weight|  original_weights_in_sum << weight.chars.map(&:to_i).sum }

  min_value = original_weights_in_sum.min

  original_weights_in_sum.uniq.length.times do

    indexes = original_weights_in_sum.each_index.select { |i| original_weights_in_sum[i] == min_value }
    result = []

    indexes.each do |index|
      result << original_weights[index]
      result = result.sort
    end

    final_result += result

    next_min_value = original_weights_in_sum.select { |x| x > min_value }.min
    min_value = next_min_value

  end

  final_result.join(" ")

end

p order_weight("2000 10003 1234000 44444444 9999 11 11 22 123")
# original_weights_in_sum [2, 4, 10, 32, 36, 2, 2, 4, 6]
# "11 11 2000 10003 22 123 1234000 44444444 9999"
