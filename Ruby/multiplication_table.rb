def multiplication_table(size)
  num = 1
  result = []

  until !result.empty? && result.last[-1] == size * size
    row = []
    (1..size).to_a.each { |multiplier| row << num * multiplier }
    result << row
    num += 1
  end
  result
end

p multiplication_table(3)
