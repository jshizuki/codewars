def generateHashtag(str)
  words = str.split.map(&:capitalize).join
  length_of_result = words.length
  length_of_result > 0 && length_of_result < 140 ? "#" + "#{words}" : false
end

p generateHashtag(" Hello there thanks for trying my Kata")
p generateHashtag("    Hello     World   " )
p generateHashtag(" " * 200)
