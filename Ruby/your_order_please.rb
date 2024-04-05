def order(words)
  words.split(" ").sort_by { |each| each.match(/\d+/)[0].to_i }.join(" ")
end

p order("is2 Thi1s T4est 3a")
