p1, p2 = gets.chomp.split(' ').map(&:to_i)
p3, p4 = gets.chomp.split(' ').map(&:to_i)
scores1 = gets.chomp.split(' ').map(&:to_i)
scores2 = gets.chomp.split(' ').map(&:to_i)

if scores1[p1 - 1] < scores1[p2 - 1]
  win1 = p1
else
  win1 = p2
end

if scores1[p3 - 1] < scores1[p4 - 1]
  win2 = p3
else
  win2 = p4
end

arr = []
if win1 < win2
  if scores2[0] < scores2[1]
    arr << win1
    arr << win2
  else
    arr << win2
    arr << win1
  end
else
  if scores2[0] < scores2[1]
    arr << win2
    arr << win1
  else
    arr << win1
    arr << win2
  end
end

arr.each { |e| puts e }

