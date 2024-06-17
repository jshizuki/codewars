# THE REACTO METHOD - (REPEAT, EXPLAIN, ? , CODE, TEST, OPTIMIZE)

# Write a function that removes odd numbers from an array of numbers

def fizz_buzz(n)
  (1..n).to_a.map do |num|
    case
    when num % 15 == 0 then "FizzBuzz"
    when num % 3 == 0 then "Fizz"
    when num % 5 == 0 then "Buzz"
    else num
    end
  end
end

p fizz_buzz(15)

def remove_odd_numbers(arr)
  arr.filter { |int| int.even? }
end

p remove_odd_numbers([1, 2, 3, 4, 5])

# Return an array of its values plus the value's index

def find_value_and_index(arr)
  arr.each_with_index do |string, index|
    p "At index #{index}, The value is #{string}"
  end
end

find_value_and_index(["cat", "dog", "rabbit", "dolphin"])

# Flatten a multi-dimensional array (=an array of arrays)

def flatten_multi_dimensional_array(arr)
  arr.flatten
end

p flatten_multi_dimensional_array([[1], [2, 3], [4]])

# Shuffle an array of integers
