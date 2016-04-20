while linea = gets
  lineb = gets
  a = linea.split
  b = lineb.split
  hit,blow = 0,0
  3.downto(0) do |i|
    if a[i] == b[i]
      a.delete_at(i)
      hit += 1
    end
  end
  b.each do |e|
    blow += 1 if a.include?(e)
  end
  puts "#{hit} #{blow}"
end
