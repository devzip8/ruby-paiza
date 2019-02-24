n, days = gets.chomp.split(' ').map(&:to_i)
arr_d = []
arr_r = []
n.times do |i|
  d, r = gets.chomp.split(' ').map(&:to_i)
  arr_d << d
  arr_r << r
end

st_d = 0
min = -1
(n - days + 1).times do |i|
  # p arr_r[i..(i + days - 1)]
  sum = arr_r[i..(i + days - 1)].inject(0) { |sum, r| sum += r }
  # puts "#{i}, sum: #{sum}, min: #{min}"
  if min < 0 || sum < min
    min = sum
    st_d = arr_d[i]
  end
end

en_d = st_d + days - 1
puts "#{st_d} #{en_d}"