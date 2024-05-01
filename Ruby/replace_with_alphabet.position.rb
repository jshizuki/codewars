def alphabet_position(text)
  alphabets = ("a".."z").to_a
  words = text.downcase.scan(/[a-z]+/)
  result = []

  words.each do |word|
    words_each = word.chars
    words_each.map do |alphabet|
      alphabet_position = (alphabets.index(alphabet).to_i + 1).to_s
      number = alphabet.gsub(alphabet, alphabet_position)
      result << number
    end
  end
  result.join(" ")
end

p alphabet_position("The sunset sets at twelve o' clock.")
