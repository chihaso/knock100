str = "パタトクカシーー"
answer = []
for i in 1..4
  answer << str.slice(2 * i - 1)
end
puts answer.join("")
