def rgb(r, g, b)
  letters = ("A".."F").to_a
  letters_hex_conversion = (10..15).to_a

  array = [r, g, b]

  array.each_with_index do |each, i|
    each < 0 ? each = 0 : each
    each > 255 ? each = 255 : each

    hex = each / 16

    first_hex = hex < 10 ? hex : letters[letters_hex_conversion.index(hex)]

    remaining_value = each - (hex * 16)
    second_hex = remaining_value < 10 ? remaining_value : letters[letters_hex_conversion.index(remaining_value)]

    array[i] = "#{first_hex}#{second_hex}"
  end

  array.join
end

p rgb(148, 0, 211)
