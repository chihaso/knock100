sentence = File.open(ARGV[0]).read
lines = sentence.split("\n")
col1 = []
col2 = []
lines.each { |line|
  separated_line = line.split(/[\t ]/)
  col1 << separated_line[0]
  col2 << separated_line[1]
}

File.open("col1.txt", "w") { |f|
  f.puts col1
}
File.open("col2.txt", "w") { |f|
  f.puts col2
}
