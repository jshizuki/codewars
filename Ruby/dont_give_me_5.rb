# First attempt
def dont_give_me_five(start_,end_)
  numbers = (start_..end_).to_a

  numbers.each_with_index do |number, index|
    if number.to_s.include?("5")
      numbers[index] = "five_occurrence"
    end
  end
  numbers.delete("five_occurrence")
  numbers.length
end

# Second attempt
def dont_give_me_five(start_,end_)
  (start_..end_).to_a.count do |number|
    !number.to_s.include?("5")
  end
end

dont_give_me_five(4, 17)

p dont_give_me_five(31,90)
