surface = ""
l = 0
while line = gets
  surface << line.chomp
  l += 1
  if l >= 8
    if surface.include?("1100000011")
      puts "A"
    elsif surface.include?("1000000010000000100000001")
      puts "B"
    elsif surface.include?("1111")
      puts "C"
    elsif surface.include?("1000000110000001")
      puts "D"
    elsif surface.include?("11000000011")
      puts "E"
    elsif surface.include?("100000001100000001")
      puts "F"
    elsif surface.include?("110000011")
      puts "G"
    end
    surface = ""
    l = 0 
    gets
  end
end
