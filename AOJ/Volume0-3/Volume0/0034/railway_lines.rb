while line = gets
  a = line.split(',').map(&:to_i)
  v2 = a.pop.to_f
  v1 = a.pop.to_f
  l = a.inject(:+)
  passby = l * v1/(v1+v2)
  sum = 0
  a.each_with_index do |l,i|
    sum += l
    if passby <= sum
      puts i + 1
      break
    end
  end
end
