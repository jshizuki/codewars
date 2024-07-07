def find_missing(sequence)
  pattern = []

  3.times do |index|
    next_integer = sequence[index + 1]
    difference = next_integer - sequence[index]
    pattern << difference
  end

  difference = pattern.select { |i| pattern.count(i) >= 2 }.uniq[0]

  missing_number = 0

  sequence.each_with_index do |integer, index|
    next if index.zero?
    missing_number = integer - difference if integer - sequence[index - 1] != difference
  end
  missing_number
end

p find_missing([1, 3, 4, 5, 6, 7, 8, 9])
