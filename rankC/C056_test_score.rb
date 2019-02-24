nm = gets.chomp.split(' ').map(&:to_i)
n = nm[0]
m = nm[1]

n.times do |i| 
  ab = gets.chomp.split(' ').map(&:to_i)
  a = ab[0]
  b = ab[1]
  score = a - b * 5
  if score < 0
    score = 0
  end
  if score >= m
    # 合格
    puts i + 1
  end
end

