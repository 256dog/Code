def resolve?(str)
  str = str.split('').sort!.join
  for i in 1..9
    if    str.include?(i.to_s) and
      str.include?((i+1).to_s) and
      str.include?((i+2).to_s)

      new_str = str.sub(i.to_s,"")
      new_str.sub!((i+1).to_s,"")
      new_str.sub!((i+2).to_s,"")
      if resolve?(new_str)
        return true
      end
    end

    if str.length == 2 and str[0] == str[1]
      return true
    end

    if 3 <= str.count(i.to_s)
      new_str = str.sub(i.to_s,"")
      new_str.sub!(i.to_s,"")
      new_str.sub!(i.to_s,"")
      if resolve?(new_str)
        return true
      end
    end
    
    if str.length == 2 and str[0] == str[1]
      return true
    end
  end
  return false
end

ARGF.each do |line|
  ans = []
  ("1".."9").each do |i|
    if line.count(i) <= 3
      if resolve?(i+line.chomp) == true
        ans << i
      end
    end
  end
  if ans.length == 0
    puts "0"
  else
    puts ans.sort.join(' ')
  end
end

