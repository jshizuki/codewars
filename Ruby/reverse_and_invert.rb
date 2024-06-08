def reverse_invert(array)
  only_integers = array.grep(Integer)
  only_integers.map do |i|
    i.positive? ? -(i.to_s.chars.reverse.join("").to_i) : (-(i)).to_s.chars.reverse.join("").to_i
  end
end

p reverse_invert([1,12,'a',3.4,87,99.9,-42,50,5.6])
