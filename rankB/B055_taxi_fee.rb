n, x = gets.chomp.split(' ').map(&:to_i)

min = -1
max = 0
n.times do |i|
  ax, bf, cx, df = gets.chomp.split(' ').map(&:to_i)
  fee = bf # 初乗り
  if x >= ax
    extra_x = x - ax
    extra = (extra_x / cx) + 1
    fee += extra * df
  end

  min = fee if fee < min || min < 0
  max = fee if fee > max
end

puts "#{min} #{max}"
