def rot13(string)
  arr1 = ("a".."z").to_a
  arr2 = ("n".."z").to_a + ("a".."m").to_a

  word_array = string.chars

  word_array.each_with_index do |each, index|
    if arr1.include?(each)
      word_array[index] = arr2[arr1.index(each)]
    else
      arr1.include?(each.downcase) ? word_array[index] = (arr2[arr1.index(each.downcase)]).upcase : each
    end
  end

  word_array.join
end

p rot13("Grfg")
