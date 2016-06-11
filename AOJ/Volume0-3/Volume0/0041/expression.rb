parenthesis = ["V"]
3.times do
  tmp = []
  parenthesis.each do |e|
    e.size.times do |i|
      if e[i] == "V"
        tmp << e[0...i] + "(VSV)" + e[(i+1)...e.size]
        tmp << e[0...i] + "VSV" + e[(i+1)...e.size]
      end
    end
  end
  parenthesis = tmp.uniq
end

#parenthesis.delete_if{|item| item =~ /^\(.*\)$/}
parenthesis.delete_if{|item| item.count('(').between?(0,2) }

ARGF.each do |line|
  nums = line.split.map(&:to_i)
  break if nums.all?{|n| n == 0}
  sign = %w"+ - *"
  catch(:next) do
    parenthesis.each do |pare|
      nums.permutation(4){|n|
        v = pare.gsub("V","%d")
        v = v % n
        e = v.gsub("S","%s")
        sign.repeated_permutation(3){|s|
          expression = e % s
          if eval(expression) == 10
            puts expression
            throw :next
          end
        }
      }
    end
    puts "0"
  end
end
