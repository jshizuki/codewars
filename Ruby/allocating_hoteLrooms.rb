def allocate_rooms(customers)
  assigned_rooms = {}
  new_room_no = 0
  room_allocation = []

  p sorted_customers = customers.sort

  sorted_customers.each do |customer|
    arrival_date = customer[0]

    unoccupied_rooms = assigned_rooms.select { |_, value| value[1] < arrival_date }
    p assigned_rooms

    if unoccupied_rooms.empty?
      # if there are no unoccupied rooms (if all rooms are occupied)
      new_room_no += 1
      # assign a new room
      assigned_rooms[new_room_no] = customer
      room_allocation << new_room_no
    else
      # if there are unoccupied rooms
      room_no_latest_departure = unoccupied_rooms.max_by { |key, value| value[1] }[0]
      assigned_rooms[room_no_latest_departure] = customer
      room_allocation << room_no_latest_departure
    end
  end
  room_allocation
end

# p allocate_rooms([[1,2],[2,4],[4,4]])
# # [1,2,1] or [2,1,2]
# p allocate_rooms([[1,5],[2,4],[6,8],[7,7]])
# any of [1,2,1,2], [1,2,2,1], [2,1,2,1], or [2,1,1,2]
p allocate_rooms([[15,22],[2,4],[6,9],[3,33],[12,21]])
# [1,2,2,3,2], [2,1,1,3,1], [3,1,3,2,1], etc
# p allocate_rooms([[1,10],[2,5],[6,6],[3,7],[6,6],[11,13],[9,15],[8,14]])
# # Solutions include:  [1,2,2,3,4,1,3,2], [1,2,2,3,4,1,2,3], [1,2,4,3,2,1,3,2], [2,3,3,1,4,2,1,3], and others
# p allocate_rooms([[1,10],[2,5],[6,6],[3,7],[6,6],[11,13],[9,15],[8,14]])
# # Solutions include:  [1,2,2,3,4,1,3,2], [1,2,2,3,4,1,2,3], [1,2,4,3,2,1,3,2], [2,3,3,1,4,2,1,3], and others
# p allocate_rooms([[8,8],[5,8],[8,9],[1,4],[1,3],[5,7],[4,8],[2,2],[4,5],[6,8]])
# # Solutions include:  [4, 1, 5, 1, 2, 4, 2, 3, 3, 3], [5, 4, 2, 2, 1, 2, 3, 3, 1, 1], and others
