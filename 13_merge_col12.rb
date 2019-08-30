col1 = File.open("col1.txt").read.split(/\n/)
col2 = File.open("col2.txt").read.split(/\n/)

if col1.size > col2.size
  line_num = col1.size
else
  line_num = col2.size
end

File.open("merge.txt", "w") { |f|
  for i in 0..line_num - 1
    f.puts col1[i] + "\t" + col2[i]
  end
}
