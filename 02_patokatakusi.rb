str1 = "パトカー"
str2 = "タクシー"

answer = []

for i in 0..3 do
  answer << str1[i]
  answer << str2[i]
end

puts answer.join ""
