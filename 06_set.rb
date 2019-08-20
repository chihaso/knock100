class Ngram
  def initialize(sentence, num)
    @sentence = sentence
    @num = num - 1
  end

  def devide
    joined_sentence = @sentence.delete(",. ")
    char_num = joined_sentence.size
    @character_ngram = []
    for i in 0..char_num - 1 do
      @character_ngram << joined_sentence[i..i + @num] if joined_sentence[i + @num]
    end
    @character_ngram
  end

  def show
    puts @character_ngram.to_s
    puts @word_ngram.to_s
  end
end

x_string = "paraparaparadise"
y_string = "paragraph"

x = Ngram.new(x_string, 2).devide
y = Ngram.new(y_string, 2).devide

puts "X = " + x.uniq.to_s + "\n"
puts "Y = " + y.uniq.to_s + "\n"
puts "X∪Y = " + (x | y).to_s + "\n"
puts "X∩Y = " + (x & y).to_s + "\n"
puts "X-Y = " + (x - y).to_s + "\n"
puts "Y-X = " + (y - x).to_s + "\n"
if x.include?("se")
  puts "X inclued \"se\""
else
  puts "X NOT inclued \"se\""
end
if y.include?("se")
  puts "Y inclued \"se\""
else
  puts "Y NOT inclued \"se\""
end
