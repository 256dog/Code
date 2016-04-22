words = {}
gets.downcase.split.each do |w|
  words[w] = words.has_key?(w) ? words[w] + 1 : 1
end
wc = words.max_by{|w| w[1]}
wl = words.max_by{|w| w[0].length}
puts "#{wc[0]} #{wl[0]}"
