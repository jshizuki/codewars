def str_count(word, letter)
  (word.chars.filter { |each| each.include?(letter) }).length
end

p str_count("Hello", "o");
