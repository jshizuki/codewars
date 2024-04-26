def spin_words(str)
  array = str.split(" ")
  new_array = array.map do |each|
    if each.length >= 5
      each.include?(",") ? each[0..-2].length == 4? each[0..-2] + "," : each[0..-2].reverse + "," : each.reverse
    else
      each
    end
  end
  new_array.join(" ")
end

p spin_words("Rake it until you make it")

# spin_words("Hey fellow Le Wagon alumni") => "Hey wollef Le nogaW inmula"
# spin_words("Rake it until you make it") => "Rake it litnu you make it"
# spin_words("Change your life, learn to code") => "egnahC your life, nrael to code"
