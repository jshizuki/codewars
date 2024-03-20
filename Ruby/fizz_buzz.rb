def fizzbuzz(n)
  array = (1..n).to_a
  array.map do |number|
    if number % 3 == 0 && number % 5 == 0 then number = "FizzBuzz"
    elsif number % 3 == 0 then number = "Fizz"
    elsif number % 5 == 0 then number = "Buzz"
    else number
    end
  end
end

p fizzbuzz(15)
