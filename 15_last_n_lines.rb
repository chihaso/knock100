sentence = File.open(ARGV[0]).read.split("\n")
line_num = ARGV[1].to_i

total_line_num = sentence.size
start_line = total_line_num - line_num

for i in start_line .. total_line_num - 1
  puts sentence[i]
end
