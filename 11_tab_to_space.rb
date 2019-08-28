sentence = File.open(ARGV[0]).read
puts "Original:\n"
p sentence
modified_sentence = sentence.split("").map { |c|
  if c == "\t" then
    " "
  else
    c
  end
}.join
puts "Modified:\n"
p modified_sentence
