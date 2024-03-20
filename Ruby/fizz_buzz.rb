def fizzbuzz(n)
  (1..n).to_a.map do |number|
    if number % 3 == 0 && number % 5 == 0 then number = "FizzBuzz"
    elsif number % 3 == 0 then number = "Fizz"
    elsif number % 5 == 0 then number = "Buzz"
    else number
    end
  end
end

p fizzbuzz(15)
