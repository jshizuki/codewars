def dirReduc(arr)
  opposite_dir = { "NORTH" => "SOUTH", "SOUTH" => "NORTH", "EAST" => "WEST", "WEST" => "EAST" }
  simplified_arr = []

  arr.each do |direction|
    if simplified_arr.any? && simplified_arr.last == opposite_dir[direction]
      simplified_arr.pop
    else
      simplified_arr << direction
    end
  end
  simplified_arr
end

p dirReduc(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"])
