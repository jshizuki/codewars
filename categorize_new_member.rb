def open_or_senior(data)
  output = []
  data.each do |member|
    if member[0] >= 55 && member[1] > 7
      output << "Senior"
    else
      output << "Open"
    end
  end
  output
end
