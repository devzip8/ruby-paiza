n = gets.chomp.to_i

ret = 0
n.times do |i|
  arr = gets.chomp.split(' ')
  sl = arr[0]
  scores = arr[1..-1].map(&:to_i)
  sum = scores.inject(0) { |sum, n| sum = sum + n }
  #puts sum

  if sum < 350
    next
  end

  en = scores[0]
  mt = scores[1]
  sc = scores[2]
  jp = scores[3]
  gh = scores[4]
  
  if sl == "s"
    next if (mt + sc ) < 160
  else
    next if (jp + gh) < 160
  end

  ret = ret + 1
end

puts ret