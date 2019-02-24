n, t, s = gets.chomp.split(' ')
n = n.to_i

if t == s
  puts 0
  return
end

tmp = s
n.times do |i| 
  tmp = tmp[1, n-1] + tmp[0]
  # puts tmp
  if t == tmp
    puts i + 1
    break
  end
end