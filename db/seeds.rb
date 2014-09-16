(?A..?Z).each do |cup|
  BustCup.find_or_create_by(cup: cup)
end
