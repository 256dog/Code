n = gets.to_i
n.times do
  xa,ya,ra,xb,yb,rb = gets.split.map(&:to_f)
  d = (xa - xb)**2 + (ya - yb)**2
  if (ra + rb)**2 < d
    puts "0"
  else
    if d  < (rb - ra)**2
      puts ra < rb ? "-2" : "2"
    else
      puts "1"
    end
  end
end
