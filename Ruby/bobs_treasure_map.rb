def treasure_finder(map)
  score = { "N" => 1, "E" => 1, "S" => -1, "W" => -1 }
  x = 0
  y = 0

  directions = map.to_s.chars
  filtered_directions = directions.select { |dir| dir == "N" || dir == "E" || dir == "S" || dir == "W" }

  return nil if filtered_directions.empty?

  filtered_directions.each { |dir| dir == "E" || dir == "W" ? x += score[dir] : y += score[dir] }

  [x, y]
end

p treasure_finder(1234567)
