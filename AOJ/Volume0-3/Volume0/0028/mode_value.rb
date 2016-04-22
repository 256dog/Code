datas ={}
while line = gets
  i = line.to_i
  datas[i] = datas.has_key?(i) ? datas[i] + 1 : 1
end
datas = datas.to_a
m = datas.max_by{|e| e[1]}
max = m[1]
max_datas = datas.select{|e| e[1] == max}
max_datas.sort!{|a,b| a[0] <=> b[0]}
max_datas.each do |e|
  puts e[0]
end
