def accum(s)
  result = ""
  s.chars.each_with_index do |letter, index|
    upcased = letter.upcase
    result << upcased
    index.times do
      result << letter.downcase
    end
    result << "-"
  end
  result[0..-2]
end
