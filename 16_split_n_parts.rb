sentence = File.open(ARGV[0]).read.split("\n")
parts_num = ARGV[1].to_i

total_line_num = sentence.size
line_num = total_line_num / parts_num

split_sentence = []

for i in 0 .. parts_num - 2
  temp_array = []
  for j in 0 .. line_num - 1
    start_line = line_num * i
    temp_array << sentence[start_line + j]
  end
  split_sentence << temp_array
end

temp_array = []
for j in line_num * (parts_num - 1) .. total_line_num - 1
  p sentence[j]
  temp_array << sentence[j]
end
split_sentence << temp_array

split_sentence.each_with_index { |s, i| puts "Part#{i + 1}: \n", s, "\n" }
