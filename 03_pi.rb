sentence = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."

separated_sentence = sentence.split(" ")
separated_sentence.each { |s| s.delete!("^[A-z]") }

char_nums = []
separated_sentence.each { |s| char_nums << s.length }
puts char_nums.join("")
