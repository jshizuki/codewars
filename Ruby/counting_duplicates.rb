def duplicate_count(text)
  count = 0
  repeat_occurrence = "";
  array = text.downcase.chars.sort
  array.each do |letter|
    if (array.count(letter) > 1) && (letter != repeat_occurrence)
      count += 1
      repeat_occurrence = letter
    end
  end
  count
end

p duplicate_count("Indivisibilities")
