def high(str)
  alphabets = ("a".."z").to_a
  score_of_each_word = []
  p split_str = str.split

  split_str.each do |word|
    score = 0
    word.chars.each do |alphabet|
      alphabet_score = alphabets.index(alphabet) + 1
      score += alphabet_score
    end
    score_of_each_word << score
  end

  index_of_highest_score = score_of_each_word.index(score_of_each_word.max)
  split_str[index_of_highest_score]
end

p high('man i need a taxi up to ubud')
