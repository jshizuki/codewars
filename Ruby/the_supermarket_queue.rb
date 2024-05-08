def queue_time(customers, n)
  tills = Array.new(n, 0)

  customers.each do |customer|
    index_of_minimum_till = tills.index(tills.min)
    tills[index_of_minimum_till] += customer
  end

  tills.max
end

p queue_time([2,2,3,3,4,4], 2)
