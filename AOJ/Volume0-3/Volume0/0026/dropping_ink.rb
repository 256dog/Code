HEIGHT=10
WIDTH=10
$paper = Array.new(WIDTH){Array.new(HEIGHT,0)}

def add_ink(x,y)
  $paper[x][y] += 1 if x.between?(0,WIDTH-1) and y.between?(0,HEIGHT-1) 
end

def drop_small(x,y)
  add_ink(x,y)
  add_ink(x-1,y)
  add_ink(x+1,y)
  add_ink(x,y-1)
  add_ink(x,y+1)
end

def drop_middle(x,y)
  ((x-1)..(x+1)).each do |i|
    ((y-1)..(y+1)).each do |j|
      add_ink(i,j)
    end
  end
end

def drop_big(x,y)
  drop_middle(x,y)
  add_ink(x-2,y)
  add_ink(x+2,y)
  add_ink(x,y-2)
  add_ink(x,y+2)
end

while line = gets
  x,y,s = line.split(',').map(&:to_i)
  case s
  when 1
    drop_small(x,y)
  when 2
    drop_middle(x,y)
  when 3
    drop_big(x,y)
  end
end

$paper.flatten!
puts $paper.count(0)
puts $paper.max
