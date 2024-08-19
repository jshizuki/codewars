def is_leap_year(year)
  year % 4 == 0 && year % 100 != 0 ? true : year % 400 == 0 ? true : false
end

puts is_leap_year(2020)
