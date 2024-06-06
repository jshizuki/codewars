def how_much_i_love_you(nb_petals)
  phrases = ["I love you", "a little", "a lot", "passionately", "madly", "not at all"]

  result = nb_petals <= phrases.length ? nb_petals : nb_petals % phrases.length

  phrases[result - 1]
end

puts how_much_i_love_you(8)
