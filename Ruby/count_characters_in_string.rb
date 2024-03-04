def count_chars(str)
  hash = {}
  array = str.chars
  array.each do |letter|
    if !(hash.key?(letter))
      hash[letter] = array.count(letter)
    end
  end
  hash
end

p count_chars("aba")
