def treasure_finder(map)
  score = { "N" => 1, "E" => 1, "S" => -1, "W" => -1 }
  opposite_directions = { "N" => "S", "S" => "N", "E" => "W", "W" => "E"}
  simplified_arr = []

  x = 0
  y = 0

  filtered_directions = map.to_s.chars.select { |dir| dir == "N" || dir == "E" || dir == "S" || dir == "W" }

  return nil if filtered_directions.empty?

  p filtered_directions

  filtered_directions.each do |dir|
    !simplified_arr.nil? && simplified_arr.last == opposite_directions[dir] ?
    simplified_arr.pop : simplified_arr << dir
    p simplified_arr
  end

  simplified_arr.each { |dir| dir == "E" || dir == "W" ? x += score[dir] : y += score[dir] }

  [x, y]
end

p treasure_finder("SENYUSWNEA") #[1,0]
