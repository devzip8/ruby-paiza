x, p = gets.chomp.split(' ').map(&:to_i)

sum = 0
tmp = x
until tmp <= 0
  sum += tmp
  tmp = tmp * (100 -p) / 100.0
  tmp = tmp.to_i
  # puts "sum: #{sum}, tmp: #{tmp}"
end

puts sum