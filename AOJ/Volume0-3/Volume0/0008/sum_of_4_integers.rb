ab = []
(0..9).each do |a|
  (0..9).each do |b|
    ab << a + b
  end
end
ab.sort!
cd = ab

while line = gets
  n = line.to_i
  count = 0
  ab.each do |e_ab|
    cd.each do |e_cd|
      count += 1 if n == e_ab + e_cd
      break if n < e_ab + e_cd
    end
  end

  puts count
end
