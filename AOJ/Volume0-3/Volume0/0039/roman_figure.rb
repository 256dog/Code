r = {"I" => 1,
     "V" => 5,
     "X" => 10,
     "L" => 50,
     "C" => 100,
     "D" => 500,
     "M" => 1000,
     nil => 0}
ARGF.each do |line|
  a = line.chomp.split('')
  sum = 0
  a.each_with_index do |c,i|
    if r[c] < r[a[i+1]]
      sum -= r[c]
    else
      sum += r[c]
    end
  end
  puts sum
end
