n = gets.chomp.to_i

ret = 0
n.times do |i|
  q, a = gets.chomp.split(' ')

  if q.length != a.length
    next
  end

  if q == a
    ret = ret + 2
    next 
  end

  n_miss = 0
  q.length.times do |ci|
    n_miss = n_miss + 1 if q[ci] != a[ci]
  end

  if n_miss <= 1
    ret = ret + 1
  end
end

puts ret