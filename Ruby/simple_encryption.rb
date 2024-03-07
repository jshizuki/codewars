def encrypt(text, n)
  n.times do
    odd = ""
    even = ""
    array = text.split("")
    array.each_with_index do |each, index|
      index.odd? ? odd << each : even << each
    end
    result = odd + even
    text = result
  end
  text
end

p encrypt("This is a test!", 3)
