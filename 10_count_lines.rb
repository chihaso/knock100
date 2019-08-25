sentence = File.open(ARGV[0]).read
line_num = sentence.count("\n")
puts "There are #{line_num} lines in this sentence."
