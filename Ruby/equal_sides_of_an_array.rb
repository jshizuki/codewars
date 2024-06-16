def find_even_index(arr)
  left = [].sum #0
  right = arr[1..-1].sum
  result = -1

  left == right ? result = 0 :
    arr.each_with_index do |num, index|
    if index <= (arr.length - 2)
      equal = (left += num) == arr[(index + 2)..-1].sum
      equal ? result = index + 1 : result
      break if equal
    end
  end
  result
end

p find_even_index([10, -80, 10, 10, 15, 35, 20])
