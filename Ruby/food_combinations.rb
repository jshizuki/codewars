def actually_really_good(foods)
  samples = foods.map(&:capitalize).uniq.sample(2)

  default_sentence = "You know what's actually really good?"

  if samples.empty?
    default_sentence + " Nothing!"
  elsif samples.length == 1
    default_sentence + " #{samples[0]} and more #{samples[0].downcase}."
  else
    default_sentence + " #{samples[0]} and #{samples[1].downcase}."
  end
end

Good_foods = ["Ice cream", "Ham", "Relish", "Pancakes", "Ketchup", "Cheese", "Eggs", "Cupcakes", "Sour cream", "Hot chocolate", "Avocado", "Skittles"]

# puts actually_really_good(Good_foods)
# puts actually_really_good(["fish fingers", "custard"])
# puts actually_really_good(["spam", "spam", "spam", "spam", "spam", "spam", "spam", "sausage", "spam", "spam", "spam", "spam"])
# puts actually_really_good([])
