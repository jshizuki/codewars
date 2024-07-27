def is_solved(board)
  horizontal = board.select { |each| each.all?(1) || each.all?(2) }
  vertical = board.transpose.select { |each| each.all?(1) || each.all?(2) }

  diagonal_one = board[0][0] == board[1][1] && board[1][1] == board[2][2]
  diagonal_second = board[0][2] == board[1][1] && board[1][1] == board[2][0]

  if !horizontal.empty?
    horizontal.flatten.uniq.first
  elsif !vertical.empty?
    vertical.flatten.uniq.first
  elsif diagonal_one && board[0][0] != 0
    board[0][0]
  elsif diagonal_second && board[0][2] != 0
    board[0][2]
  else
    board.map { |each| each.include?(0) }.any?(true) ? -1 : 0
  end
end

# p is_solved([[0, 0, 1], [2, 2, 2], [2, 1, 0]])
# p is_solved([[0, 0, 1], [0, 1, 2], [2, 1, 0]])
# p is_solved([[1, 0, 1], [0, 1, 2], [2, 1, 1]])
# p is_solved([[2, 1, 1], [2, 2, 0], [2, 1, 0]])
# p is_solved([[0, 0, 0], [2, 0, 1], [0, 2, 1]])
