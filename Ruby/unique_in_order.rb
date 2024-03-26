def unique_in_order(iterable)
  array = if iterable.class == Array
    iterable.slice_when { |a, b| a != b }.map(&:join)
  else iterable.class == String
    iterable.chars.slice_when { |a, b| a != b }.map(&:join)
  end
  array.map do |each|
    iterable[0].class == Integer ? each[0].to_i : each[0]
  end
end

p unique_in_order('AAAABBBCCDAABBB')
