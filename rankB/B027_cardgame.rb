h, w, n = gets.chomp.split(' ').map(&:to_i)
cards = []
h.times do |i|
  row = gets.chomp.split(' ').map(&:to_i)
  cards << row
end

players = Array.new(n) { |idx| 0 }
pi = 0

l = gets.chomp.to_i
l.times do |j|
  a1, b1, a2, b2 = gets.chomp.split(' ').map(&:to_i)
  if cards[a1 - 1][b1 - 1] == cards[a2 - 1][b2 - 1]
    players[pi] += 2
    # めくれた場合はプレイヤーは変わらない
    next
  end

  # 次のプレイヤーへ
  pi += 1
  pi = 0 if pi >= n
end

players.each { |p| puts p }
