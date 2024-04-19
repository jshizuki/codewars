def longest_consec(strarr, k)
  return "" if k <= 0 || strarr == [] || k > strarr.length

  words = []
  strarr.each_with_index do |each, index|
    if index < strarr.length - (k - 1)
      count = 1
      word = each
      until count == k
        word += strarr[index + count]
        count = count + 1
      end
      words << word
    end
  end
  length_of_each_word = words.map { |word| word.length }
  index_of_longest_word = length_of_each_word.index(length_of_each_word.max)
  words[index_of_longest_word]
end

p longest_consec(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1)
