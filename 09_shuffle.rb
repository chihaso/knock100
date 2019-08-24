puts "Input some words:"
words = gets.chomp.split(" ")
shuffled_words = []

words.each { |w|
  num = w.size
  shuffled_words << w[0] + w.slice(1..num - 2).split("").shuffle.join + w[num - 1]
}

puts shuffled_words.join(" ")
