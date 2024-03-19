def is_isogram(string)
  array = string.downcase.chars
  filtered_array = array.filter { |letter| array.count(letter) > 1 }
  filtered_array.empty? ? true : false
end

def is_isogram(string)
  string.downcase.chars == string.downcase.chars.uniq
end

p is_isogram("moOse")
