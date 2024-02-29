def reverse_seq(n)
  array = []
  n.times do |number|
    number = number + 1
    array << number
  end
  array.reverse
end
