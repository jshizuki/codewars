def get_indices_of_item_weights(arr, limit)
  result = []
  arr.each_with_index do |weight, index|
    other_necessary_weight = limit - weight
    if arr.find { |each| each == other_necessary_weight } != nil
      result << index
      result << arr.index(other_necessary_weight)
    end
    break if result.length == 2
  end
  result.empty? || result[0] == result[1] ? nil : result
end
