def l
  $x -= 1
  print "L"
  unless $x == 0
    if $g[[$x,$x+5]] == "1"
      d
    elsif $g[[$x-1,$x]] == "1"
      l
    elsif $g[[$x-5,$x]] == "1"
      u
    else
      r
    end
  end
end

def r
  $x += 1
  print "R"
  unless $x == 0
    if $g[[$x-5,$x]] == "1"
      u
    elsif $g[[$x,$x+1]] == "1"
      r
    elsif $g[[$x,$x+5]] == "1"
      d
    else
      l
    end
  end
end

def u
  $x -= 5
  print "U"
  unless $x == 0
    if $g[[$x-1,$x]] == "1"
      l
    elsif $g[[$x-5,$x]] == "1"
      u
    elsif $g[[$x,$x+1]] == "1"
      r
    else
      d
    end
  end
end

def d
  $x += 5
  print "D"
  unless $x == 0
    if $g[[$x,$x+1]] == "1"
      r
    elsif $g[[$x,$x+5]] == "1"
      d
    elsif $g[[$x-1,$x]] == "1"
      l
    else
      u
    end
  end
end

$g = {}
h = 0
(1..9).each do |line|
  gets.chomp.split('').each_with_index do |w,i|
    if line.odd?
      $g[[h+i, h+i+1]] = w
    else
      $g[[h+i, h+i+5]] = w
    end
  end
  h += 5 if line.even?
end

$x = 0
puts r
