def find_it(seq)
  seq.find do |number|
    seq.count(number).odd?
  end
end
