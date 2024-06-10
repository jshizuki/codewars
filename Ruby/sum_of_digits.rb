def digital_root(n)
  array = n.digits

  until array.length == 1
    new_sum = array.sum
    array = new_sum.digits
  end
  array[0]
end

p digital_root(942)
