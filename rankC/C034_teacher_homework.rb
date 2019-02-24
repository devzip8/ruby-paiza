a, op, b, eq, c = gets.chomp.split(' ')

if c == "x"
  a = a.to_i
  b = b.to_i
  if op == "+"
    puts a + b
  else
    puts a - b
  end
  return
end

if a == "x"
  b = b.to_i
  c = c.to_i
  if op == "+"
    puts c - b
  else
    puts c + b
  end
  return
end

if b == "x"
  a = a.to_i
  c = c.to_i
  if op == "+"
    puts c - a
  else
    puts a - c
  end
  return
end