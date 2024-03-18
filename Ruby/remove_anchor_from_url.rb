def remove_url_anchor(url)
  if url.include?("#")
    index_of_hash = url.index("#")
    part_to_remove = url[index_of_hash..-1]
    url.gsub(part_to_remove, "")
  else
    url
  end
end

def remove_url_anchor(url)
  url.split("#").shift
end

p remove_url_anchor("www.codewars.com#about")
