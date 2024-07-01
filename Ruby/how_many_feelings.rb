def count_feelings(string, arr)
  number = 0

  arr.each do |word|
    count = Hash.new
    string.chars.each { |char| count[char].nil? ? count[char] = 1 : count[char] += 1 }
    boolean = []

    word.chars.each do |letter|
      if count[letter].nil? || count[letter] <= 0
        boolean << false
      else
        boolean << true
        count[letter] -= 1
      end
    end
    boolean.all?(true) ? number += 1 : number
  end
  number == 1 ? "#{number} feeling." : "#{number} feelings."
end

count_feelings("abcdkasdfvkadflongin", ["desire", "joy", "shame", "longing", "fear"])
