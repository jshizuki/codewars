def find_next_square(sq)
  if Math.sqrt(sq) == Math.sqrt(sq).to_i
    next_square = Math.sqrt(sq) + 1
    next_square * next_square
  else
    -1
  end
end
