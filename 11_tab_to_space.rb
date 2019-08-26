sentence = File.open(ARGV[0]).read
puts "Original:\n"
p sentence
sentence.split("").map! { |c|
  if c == "\t" then
    c = " "
  end
}
puts "Modified:\n"
p sentence
