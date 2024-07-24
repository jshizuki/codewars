=begin
In a small town the population is p0 = 1000 at the beginning of a year.
The population regularly increases by 2 percent per year and moreover 50 new
inhabitants per year come to live in the town.
How many years does the town need to see its population
greater than or equal to p = 1200 inhabitants?
=end

def nb_year(p0, percent, aug, p)
  years = 0

  until p0 >= p
    population_each_year = (p0 + p0 * percent.to_f/100 + aug).floor
    p0 = population_each_year
    years += 1
  end

  years
end

puts nb_year(1500, 5, 100, 5000)
puts nb_year(1500000, 2.5, 10000, 2000000)
puts nb_year(1500000, 0.25, 1000, 2000000)
