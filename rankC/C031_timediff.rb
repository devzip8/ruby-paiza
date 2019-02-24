n = gets.chomp.to_i

hash = {}
arr = []
n.times do |i|
  city, diff = gets.chomp.split(' ')
  diff = diff.to_i
  hash[city] = diff
  arr << [city, diff]
end

city, t = gets.chomp.split(' ')
hh, mm = t.split(':').map(&:to_i)

base_hh = hh - hash[city]
base_hh += 24 if base_hh < 0

arr.length.times do |i|
  city = arr[i][0]
  hh = base_hh + arr[i][1]
  hh += 24 if hh < 0 # これが抜けててNGになった
  hh %= 24 if hh >= 24
  printf("%02d:%02d\n", hh, mm)
end
