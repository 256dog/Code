ARGF.each do |line|
  hand = line.split(',').map(&:to_i).sort
  pares = []
  hand.uniq.each do |c|
    pares << hand.count(c)
  end

  if pares.include?(4)
    puts "four card"
  elsif pares.include?(3) and pares.include?(2)
    puts "full house"
  elsif pares.include?(3)
    puts "three card"
  elsif pares.count(2) == 2
    puts "two pair"
  elsif pares.include?(2)
    puts "one pair"
  elsif pares.count(1) == 5
    if hand[0]+4 == hand[-1]
      puts "straight"
    elsif hand == [1,10,11,12,13]
      puts "straight"
    else
      puts "null"
    end
  end
end




